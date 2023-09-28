component extends="rulebox.models.RuleBook"{
	
	function defineRules(){
		addRule(
			newRule()
			.setName( "red and blue make violet" )
			.when( function( facts ){
				return (
					( facts.color1 EQ "red" OR facts.color1 EQ "blue" ) AND
					( facts.color2 EQ "red" OR facts.color2 EQ "blue" )
				)})
			.except( function( facts ){
				return ( facts.color1 EQ facts.color2 )
			})
			.then( function( facts, results ){ 
				result.setValue( "violet" )
			})
			.stop()
		);
		addRule(
			newRule()
			.setName( "red and yellow make orange" )
			.when( function( facts ){
				return (
					( facts.color1 EQ "red" OR facts.color1 EQ "yellow" ) AND
					( facts.color2 EQ "red" OR facts.color2 EQ "yellow" )
				)})
			.except( function( facts ){
				return ( facts.color1 EQ facts.color2 )
			})
			.then( function( facts, results ){ 
				result.setValue( "orange" )
			})
			.stop()
		);
		addRule(
			newRule()
			.setName( "yellow and blue make green" )
			.when( function( facts ){
				return (
					( facts.color1 EQ "yellow" OR facts.color1 EQ "blue" ) AND
					( facts.color2 EQ "yellow" OR facts.color2 EQ "blue" ) 
				)})
			.except( function( facts ){
				return ( facts.color1 EQ facts.color2 )
			})
			.then( function( facts, results ){ 
				result.setValue( "green" )
			})
			.stop()
		);
		addRule(
			newRule()
			.setName( "red and red make more red" )
			.when( function( facts ){
				return (
					( facts.color1 EQ "red" ) AND
					( facts.color2 EQ "red" ) 
				)})
			.then( function( facts, results ){ 
				result.setValue( "red" )
			})
			.stop()
		);
		addRule(
			newRule()
			.setName( "blue and blue make more blue" )
			.when( function( facts ){
				return (
					( facts.color1 EQ "blue" ) AND
					( facts.color2 EQ "blue" ) 
				)})
			.then( function( facts, results ){ 
				result.setValue( "blue" )
			})
			.stop()
		);
		addRule(
			newRule()
			.setName( "yellow and yellow make more yellow" )
			.when( function( facts ){
				return (
					( facts.color1 EQ "yellow" ) AND
					( facts.color2 EQ "yellow" ) 
				)})
			.then( function( facts, results ){ 
				result.setValue( "yellow" )
			})
			.stop()
		);
	}
}