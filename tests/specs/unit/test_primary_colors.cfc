component extends="testbox.system.BaseSpec"{

	function beforeAll(){

	}

	function run( testResults, testBox ){
		describe( "Rules for Primary Colors", function(){
			it( "knows yellow and blue make green", function(){
				var theRules = application.wirebox.getInstance( "color_rules@utilities" )
				.givenAll({
					color1 : "yellow",
					color2 : "blue"
				});
			theRules.run();
			expect( theRules.getResult().isPresent()).toBeTrue();
			expect( theRules.getResult().getValue() ).toBeTypeOf( type = "string" );
			expect( theRules.getResult().getValue()).toBe( "green" );
			});			
			it( "knows red and blue make violet", function(){
				var theRules = application.wirebox.getInstance( "color_rules@utilities" )
				.givenAll({
					color1 : "red",
					color2 : "blue"
				});
			theRules.run();
			expect( theRules.getResult().isPresent()).toBeTrue();
			expect( theRules.getResult().getValue() ).toBeTypeOf( type = "string" );
			expect( theRules.getResult().getValue()).toBe( "violet" );
			});
			it( "knows red and yellow make orange", function(){
				var theRules = application.wirebox.getInstance( "color_rules@utilities" )
				.givenAll({
					color1 : "yellow",
					color2 : "red"
				});
			theRules.run();
			expect( theRules.getResult().isPresent()).toBeTrue();
			expect( theRules.getResult().getValue() ).toBeTypeOf( type = "string" );
			expect( theRules.getResult().getValue()).toBe( "orange" );
			});
			it( "knows red and blue do not make orange", function(){
				var theRules = application.wirebox.getInstance( "color_rules@utilities" )
				.givenAll({
					color1 : "blue",
					color2 : "red"
				});
			theRules.run();
			expect( theRules.getResult().isPresent()).toBeTrue();
			expect( theRules.getResult().getValue() ).toBeTypeOf( type = "string" );
			expect( theRules.getResult().getValue()).notToBe( "orange" );
			});
			it( "knows red and red make orange", function(){
				var theRules = application.wirebox.getInstance( "color_rules@utilities" )
				.givenAll({
					color1 : "red",
					color2 : "red"
				});
			theRules.run();
			expect( theRules.getResult().isPresent()).toBeTrue();
			expect( theRules.getResult().getValue() ).toBeTypeOf( type = "string" );
			expect( theRules.getResult().getValue()).toBe( "orange" );
			});
		});
	}
}