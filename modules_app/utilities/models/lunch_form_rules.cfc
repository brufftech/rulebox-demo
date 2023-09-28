component extends="rulebox.models.RuleBook"{
	
	function defineRules(){
		addRule(
			newRule()
			.setName( "caseNumber required when isAssistance true" )
			.when( function( facts ){
				return (
					( facts.question_to_check EQ "caseNumber" AND 
					  facts.isAssistance EQ true )
				)})
			.then( function( facts, results ){ 
				result.setValue( true )
			})
			.stop()
		);
		addRule(
			newRule()
			.setName( "caseNumber not required when isAssistance false" )
			.when( function( facts ){
				return (
					( facts.question_to_check EQ "caseNumber" AND 
					  facts.isAssistance EQ false )
				)})
			.then( function( facts, results ){ 
				result.setValue( false )
			})
			.stop()
		);
	}
}