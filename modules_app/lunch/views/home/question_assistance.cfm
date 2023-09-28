<cfoutput>
	<h1>Conditional Question Demo</h1>
<div class="container">
	<div class="row justify-content-md-center">
		#html.startForm(
			action="lunch.home.checkCaseNumberQuestion"
		)#
			<p>Do any household members (including you) participate in: SNAP, TANF, or FDPIR?</p>
			#html.radioButton( name="isAssistance", value=true, label="Yes", checked=false, groupWrapper="div class='form-check'", wrapper="div class='form-check-input'", labelClass="form-check-label" )#
			#html.radioButton( name="isAssistance", value=false, label="No", checked=false, groupWrapper="div class='form-check'", wrapper="div class='form-check-input'", labelClass="form-check-label" )#
		#html.submitButton()#
	</div>
</div>
</cfoutput>