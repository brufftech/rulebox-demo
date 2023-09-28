component{

	property name = "rules" inject = "color_rules@utilities";

	/**
	* Constructor
	*/
	public colorService function init(){
		return this;
	}

	public string function mixTwoColors( required string color1, required string color2 ){
		var facts = {}
		var theResults = ''

		facts.color1 = arguments.color1
		facts.color2 = arguments.color2

		theResults = rules
			.givenAll( facts )
			.run()

		return theResults.getResult().getValue()
	}

	public any function showTwoColorStatusMap( required string color1, required string color2 ){
		var facts = {}
		var theResults = ''

		facts.color1 = arguments.color1
		facts.color2 = arguments.color2

		theResults = rules
			.givenAll( facts )
			.run()

		writeoutput( "Color 1: #arguments.color1# &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Color 2: #arguments.color2#")
		writeoutput( "<br/>")
		writeoutput( "<br/>")
		writedump( theResults.getRuleStatusMap() )
		writeoutput( "<br/>")
		writeoutput( "NONE: Rule didn't run <br /> SKIPPED: Rule checked, when() conditions were false <br /> EXECUTED: Rule checked, when() conditions true, then() actions executed (results affected) <br /> STOPPED: Rule checked, when() conditions true, then() actions executed, no more rules checked" )
		abort
	}
}