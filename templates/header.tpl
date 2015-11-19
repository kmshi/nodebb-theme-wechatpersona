<!DOCTYPE html>
<html lang="{defaultLang}">
<head>
	<title>{browserTitle}</title>
	<!-- BEGIN metaTags -->
	{function.buildMetaTag}
	<!-- END metaTags -->
	<link rel="stylesheet" type="text/css" href="{relative_path}/stylesheet.css?{css-buster}" />
	<!-- IF bootswatchCSS --><link id="bootswatchCSS" href="{bootswatchCSS}" rel="stylesheet" media="screen"><!-- ENDIF bootswatchCSS -->
	<!-- BEGIN linkTags -->
	<link<!-- IF linkTags.link --> link="{linkTags.link}"<!-- ENDIF linkTags.link --><!-- IF linkTags.rel --> rel="{linkTags.rel}"<!-- ENDIF linkTags.rel --><!-- IF linkTags.type --> type="{linkTags.type}"<!-- ENDIF linkTags.type --><!-- IF linkTags.href --> href="{linkTags.href}"<!-- ENDIF linkTags.href --> />
	<!-- END linkTags -->

    <!-- Bootcards CSS file (different for desktop, iOS and Android, included Bootstrap CSS)
	<!-- IF isAndroid -->
    <link href="//cdnjs.cloudflare.com/ajax/libs/bootcards/1.1.2/css/bootcards-android.min.css" rel="stylesheet" type="text/css" />
    <!-- ENDIF isAndroid -->
    <!-- IF isIos -->
    <link href="//cdnjs.cloudflare.com/ajax/libs/bootcards/1.1.2/css/bootcards-ios.min.css" rel="stylesheet" type="text/css" />
    <!-- ENDIF isIos -->
    <!-- IF isDesktop -->
    <link href="//cdnjs.cloudflare.com/ajax/libs/bootcards/1.1.2/css/bootcards-desktop.min.css" rel="stylesheet" type="text/css" />
    <!-- ENDIF isDesktop -->
    <link href="//cdnjs.cloudflare.com/ajax/libs/bootcards/1.1.2/css/bootcards-desktop.min.css" rel="stylesheet" type="text/css" />
    -->
	<!--[if lt IE 9]>
  		<script src="//cdnjs.cloudflare.com/ajax/libs/es5-shim/2.3.0/es5-shim.min.js"></script>
  		<script src="//cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7/html5shiv.min.js"></script>
  		<script src="//cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.min.js"></script>
  		<script>__lt_ie_9__ = 1;</script>
	<![endif]-->

	<script>
		var RELATIVE_PATH = "{relative_path}";
		var config = JSON.parse('{{configJSON}}');
		var app = {
			template: "{template.name}",
			user: JSON.parse('{{userJSON}}')
		};
	</script>

	<!-- IF isWeChat -->
    <script src="//res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
    <!-- ENDIF isWeChat -->

    <script src="{relative_path}/nodebb.min.js?{script-buster}"></script>
	<!-- IMPORT partials/requirejs-config.tpl -->

	<!-- Bootcards JS file
    <script src="//cdnjs.cloudflare.com/ajax/libs/bootcards/1.1.2/js/bootcards.min.js"></script>
    -->
	
	<!-- IF useCustomJS -->
	{{customJS}}
	<!-- ENDIF useCustomJS -->
	<!-- IF useCustomCSS -->
	<style type="text/css">{{customCSS}}</style>
	<!-- ENDIF useCustomCSS -->
</head>

<body>
	<nav class="navbar navbar-default navbar-fixed-top header" role="navigation" id="header-menu" component="navbar">
		<div class="container">
			<!-- IMPORT partials/menu.tpl -->
		</div>
	</nav>
	<div class="container" id="content" component="header">
	<!-- IMPORT partials/noscript/warning.tpl -->