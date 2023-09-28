component{

	property name="colorService"				inject="colorService@color";

	function index( event, rc, prc ){
		prc.colorOptions = [ "blue","red","yellow" ];

		event.setView( "home/index" );
	}

	function mix( event, rc, prc ){
		prc.results = ''
		prc.results = colorService.mixTwoColors( rc.color1, rc.color2 );

		event.setView( "home/results" );
	}

	function rules( event, rc, prc ){		
		prc.colorOptions = [ "blue","red","yellow" ];

		event.setView( "home/rules" );
	}

	function map( event, rc, prc ){		
		colorService.showTwoColorStatusMap( rc.color1, rc.color2 );

		event.setView( "home/rules" );
	}
}
