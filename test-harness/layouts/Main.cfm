<cfscript>
	function parseRendering( html ) {

		var parsing = html.trim();

		parsing = REReplaceNOCase( parsing, "<div[^>]*>", "", "one" );

		parsing = REReplaceNOCase( parsing, "</div>", "", "one" );

		return "<pre><code class=""html"">" & encodeForHtml( parsing ) & "</code></pre>";
	}


	livewireComponents = [
		"Counter",
		"CounterMouseOver",
		"ModelBinding",
		"ModelBindingDebounce",
		"ModelBindingLazy",
		"FormSubmit"
	];

</cfscript>

<cfoutput>
<!doctype html>
<html lang="en">
<head>
	<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/highlight.js/10.7.2/styles/default.min.css">
	<style type="text/css">
		body {
			text-align: center;
			font-size: 16pt;
		}
		input {
			width: 300px;
		}
		code {
			color: ##006aff;
		}
		.heading {
			margin: 25px 0 25px 0;
		}
	</style>

	#livewireStyles()#
</head>
<body>
	<cfloop array="#livewireComponents#" index="livewireComponent">
		<div class="heading">handlers/cblivewire/#liveWireComponent#.cfc</div>
		#livewire( livewireComponent )#
		#parseRendering( livewire( livewireComponent ) )#
		<hr>
	</cfloop>

	#livewireScripts()#
</body>
</html>
</cfoutput>
