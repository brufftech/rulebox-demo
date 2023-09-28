component{
	property name = "rules" inject = "lunch_form_rules@utilities";

	public boolean function checkCaseNumber( required boolean isAssistanceAnswer ){
		var theResults = ''

		theResults = rules
			.givenAll( {
				isAssistance : arguments.isAssistanceAnswer,
				question_to_check : "caseNumber"
				} )
			.run()

		return theResults.getResult().getValue()
	}

}