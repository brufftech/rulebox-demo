<cfoutput>
	<!doctype html>
	<html lang="en">
	<head>
		<!--- Metatags --->
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="description" content="ColdBox Application Template">
		<meta name="author" content="Ortus Solutions, Corp">

		<!---Base URL --->
		<base href="#event.getHTMLBaseURL()#" />

		<!---css --->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
		<style>
			.text-blue { color:##232D4B; }
		</style>

		<!--- Title --->
		<title>Complex Web Forms with RuleBox and TestBox</title>
	</head>
	<body
		data-spy="scroll"
		data-target=".navbar"
		data-offset="50"
		style="padding-top: 60px"
		class="d-flex flex-column h-100"
	>
		<!---Top NavBar --->
		<header>
			<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
				<div class="container-fluid">
					<!---Brand --->
					<a class="navbar-brand" href="#event.buildLink( 'main' )#">
						<strong><i class="bi bi-bounding-box-circles"></i> Home</strong>
					</a>
				</div> 
			</nav>
		</header>

		<!---Container And Views --->
		<main class="flex-shrink-0">
			#renderView()#
		</main>

		<!--- Footer --->
		<footer class="w-100 bottom-0 position-fixed border-top py-3 mt-5 bg-light">
		</footer>

		<!---js --->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
		<script defer src="https://unpkg.com/alpinejs@3.x.x/dist/cdn.min.js"></script>
	</body>
	</html>
	</cfoutput>
