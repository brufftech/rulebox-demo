<cfoutput>
	<div class="text-center card shadow-sm bg-light border border-5 border-white">
		<div class="card-body">
			<div>
				<img src="includes/images/Adobe-Logo.png" class="m-2 mt-2" alt="logo" height="200"/>
			</div>
			<div class="badge bg-dark mb-2">
				<strong>Adobe CF Summit 2023</strong>
			</div>
			<h1 class="display-5 fw-bold">
				#prc.welcomeMessage#
			</h1>
			<h2 class="display-7 fw-bold">
				By Annette Liskey
			</h2>
		</div>
	</div>
	<div class="container mb-5">
		<div class="row py-5 row-cols-lg-2 gx-4">
			<div class="col d-flex align-items-start">
				<div>
					<h2 class="text-blue">Color Wheel Demo</h2>
					<div class="list-group">
						<!--- COLOR DEMO - TWO COLORS --->
						<a href="#event.buildLink( 'color.home' )#" class="list-group-item list-group-item-action d-flex gap-2 py-3" title="Color Home Page">
							<div class="rounded-circle flex-shrink-0 text-success px-1">
								<i class="bi bi-play-btn" aria-hidden="true"></i>
							</div>
							<div class="d-flex gap-2 w-100 justify-content-between">Mix Two Colors</div>
						</a>
						<!--- COLOR DEMO - OUTPUT RULES STATUS MAP --->
						<a href="#event.buildLink( 'color.home.rules' )#" class="list-group-item list-group-item-action d-flex gap-2 py-3" title="Color Rules Status Map">
							<div class="rounded-circle flex-shrink-0 text-success px-1">
								<i class="bi bi-play-btn" aria-hidden="true"></i>
							</div>
							<div class="d-flex gap-2 w-100 justify-content-between">Show Color Rules Status Map</div>
						</a>
					</div>
					<hr>
					<h2 class="text-blue">Lunch App Demo</h2>
					<div class="list-group">
						<!--- CONDITIONAL QUESTION DEMO - CASE NUMBER --->
						<a href="#event.buildLink( 'lunch.home.question_assistance' )#" class="list-group-item list-group-item-action d-flex gap-2 py-3" title="Color Home Page">
							<div class="rounded-circle flex-shrink-0 text-success px-1">
								<i class="bi bi-play-btn" aria-hidden="true"></i>
							</div>
							<div class="d-flex gap-2 w-100 justify-content-between">Assitance Question</div>
						</a>
				</div>			
			</div>

			<div class="col d-flex align-items-start">
				<div>
					<h2 class="text-blue">Tests</h2>
					<div class="d-grid gap-2 d-sm-flex justify-content-sm-center">
						<a
							href="#getSetting( "appMapping" )#/tests/index.cfm"
							class="btn btn-dark btn-lg"
							role="button"
							target="_blank"
						>
							<i class="bi bi-binoculars" aria-hidden="true"></i>
							Test Browser
						</a>

						<a
							href="#getSetting( "appMapping" )#/tests/runner.cfm"
							class="btn btn-dark btn-lg"
							role="button"
							target="_blank"
						>
							<i class="bi bi-activity" aria-hidden="true"></i>
							Test Runner
						</a>
					</div>
				</div>
			</div>

		</div>

	</div>

	</cfoutput>
