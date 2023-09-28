<cfoutput>
	<h1>Play with Primary Colors!</h1>

	<cfif structKeyExists( prc, "results" )>
		<p>The result of mixing <strong>#rc.color1#</strong> and <strong>#rc.color2#</strong> is <strong>#prc.results#</strong></p>
	<cfelse>
		<p>No results found</p>
	</cfif>
	
	<a href="#event.buildLink( 'color.home.index' )#">Mix Again</a>
</cfoutput>