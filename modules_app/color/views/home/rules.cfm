<cfoutput>
	<h1>Play with Primary Colors!</h1>

	<cfif structKeyExists( prc, "results" )>
		<h2>The result is #prc.results#</h2>
	</cfif>
<div>
#html.startForm(
	action="color.home.map"
)#
#html.select(
	name="color1",
	id = "color1",
	options = prc.colorOptions,
	label = "Choose a color: "
)#
#html.select(
	name="color2",
	id = "color2",
	options = prc.colorOptions,
	label = "Choose another color: "
)#
#html.submitButton()#
</div>
</cfoutput>