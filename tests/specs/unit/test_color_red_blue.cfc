component extends="testbox.system.BaseSpec"{

	function beforeAll(){

	}

	function run( testResults, testBox ){

		describe( "Rules for Mixing Red and Blue", function(){
			it( "gives a result", function(){
				var theRules = application.wirebox.getInstance( "color_rules@utilities" )
				.givenAll({
					color1 : "red",
					color2 : "blue"
				});
			theRules.run();

			expect( theRules.getResult().isPresent()).toBeTrue();
			});
				
			it( "the result is a string", function(){
				var theRules = application.wirebox.getInstance( "color_rules@utilities" )
				.givenAll({
					color1 : "red",
					color2 : "blue"
				});
			theRules.run();

			expect( theRules.getResult().getValue() ).toBeTypeOf( type = "string" );
			});

			it( "knows red and blue make violet", function(){
				var theRules = application.wirebox.getInstance( "color_rules@utilities" )
				.givenAll({
					color1 : "red",
					color2 : "blue"
				});
			theRules.run();

			expect( theRules.getResult().getValue()).toBe( "violet" );
			});

			it( "knows red and blue do not make orange", function(){
				var theRules = application.wirebox.getInstance( "color_rules@utilities" )
				.givenAll({
					color1 : "red",
					color2 : "blue"
				});
			theRules.run();

			expect( theRules.getResult().getValue()).notToBe( "orange" );
			});
		});
	}
}