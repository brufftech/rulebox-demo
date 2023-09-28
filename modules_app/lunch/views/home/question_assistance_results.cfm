<cfoutput>
	<h1>Play with Primary Colors!</h1>

	<cfif structKeyExists( prc, "results" )>
		<p>When the answer to the "isAssistance" question is <strong>#rc.isAssistance#</strong>, the requirement to show the "caseNumber" question is <strong>#prc.results#</strong></p>
	<cfelse>
		<p>No results found</p>
	</cfif>
	
	<a href="#event.buildLink( 'lunch.home.question_assistance' )#">Try Again</a>
</cfoutput>