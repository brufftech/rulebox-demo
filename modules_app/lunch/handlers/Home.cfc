component{


	property name="formLogicFunctions"				inject="formLogicFunctions@lunch";

	function index( event, rc, prc ){

		event.setView( "home/index" );
	}

	function question_assistance( event, rc, prc ){

		event.setView( "home/question_assistance" );
	}

	function checkCaseNumberQuestion( event, rc, prc ){
		prc.results = ''
		prc.results = formLogicFunctions.checkCaseNumber( rc.isAssistance );

		event.setView( "home/question_assistance_results" );
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
