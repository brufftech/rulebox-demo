<cfoutput>
	<h1>Play with Primary Colors!</h1>
<div>
#html.startForm(
	action="color.home.mix"
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