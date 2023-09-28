component{

	property name = "rules" inject = "lunch_form_rules@utilities";

	public boolean function saveAnswer( required component thisReport, required component questionAnswered, required any answerValue ){
		var doUpdateRequirements = allUpdated = false
		
		// save answer code HERE

		// does this answer determine if any other questions are required?
		doUpdateRequirements = checkForConditionalQuestions( arguments.questionAnswered )

		// if so, update the required questions records for all questions in the group
		if ( doUpdateRequirements )
			allUpdated = updateReportRequirements( arguments.thisReport, arguments.questionAnswered.getQuestionGroup() )

	}

	// returns true if given question is the independentQ in any relatedQuestion
	public boolean function checkForConditionalQuestions( required component thisQuestion ){
		var theRelations = [];

		theRelations = relatedQuestionService.findAllWhere(
			criteria = {
				conditionalFactor = arguments.thisQuestion.getSlug()
			});

		if( arrayIsEmpty( theRelations ) )
			return false;

		return true;
	}

	// updates the records for whether questions are required for a given report and question group
	public void function setQuestionRequirement( required component thisReport, required component theQuestionGroup ){
		var theRulesSet = '';
		var groupQs = groupSlugs = answerSlugs = [];
		var theFacts = {};

		// get all the questions in the group
		groupQs = questionService.findAllWhere(
			criteria={
				questionGroup = arguments.theQuestionGroup
			});

		// LOOP 1: build the struct that you'll send to the rules
		// get the answer for each relatedQ; assign it to a variable with that q name
		for ( thisQ in groupQs ){
			var thisAnswer = [];

			// find the corresponding answer
			thisAnswer = answerService.findAllWhere(
				entityName = "answer",
				criteria = {
					report = arguments.thisReport,
					question = thisQ
				});

			// if answer is found, create a struct with the answer
			if ( !arrayIsEmpty( thisAnswer ) )
				thisFactStruct = { #thisQ.getSlug()# : #thisAnswer[1].getValue()# };
			// otherwise, make an empty answer
			else
				thisFactStruct = { #thisQ.getSlug()# : '' };

			// append this key-value pair to the facts struct
			structAppend( theFacts, thisFactStruct );
		}

		// LOOP 2
		// call the rules once for each question in the group
		for ( thisQ in groupQs ){
			// only check conditional questions; skip questions and always-required questions
			if ( !thisQ.getIsData() NEQ "data" AND !thisQ.getIsRequired() ){
				var theResult = setResults = '';

				// append the slug for this question as the "question_to_check"
				theFacts.question_to_check = thisQ.getSlug();

				// call the rules with the facts (the known answers to all Qs in this group)
				theResult = rules
					.givenAll(
						theFacts
					)
					.run();

				// based on the results, set the record for if this question ("question_to_check") is required for this report
				setResults = setReportRequirement( arguments.thisReport, thisQ, theResult.getResult().getValue() );		
			}
		}
	}
}