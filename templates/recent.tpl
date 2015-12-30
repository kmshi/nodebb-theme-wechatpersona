<div class="recent">

	<div class="clearfix">
		<div class="pull-left">
		<!-- IMPORT partials/breadcrumbs.tpl -->
		</div>
		<div class="pull-right">
			<!-- IF loggedIn -->
			<button id="new_topic" class="btn btn-primary">[[category:new_topic_button]]</button>
			<!-- ELSE -->
			<a href="{config.relative_path}/login" class="btn btn-primary">[[category:guest-login-post]]</a>
			<!-- ENDIF loggedIn -->
		</div>
	</div>

	<hr />

	<div class="category">
		<!-- IF !topics.length -->
		<div class="alert alert-warning" id="category-no-topics">
			<strong>[[recent:no_recent_topics]]</strong>
		</div>
		<!-- ENDIF !topics.length -->

		<a href="{config.relative_path}/recent">
			<div class="alert alert-warning hide" id="new-topics-alert"></div>
		</a>

		<!-- IMPORT partials/topics_list.tpl -->
	</div>
</div>

<!-- fixed tabbed footer -->
<div class="navbar navbar-primary navbar-fixed-bottom visible-xs clearfix">
    <div class="container-fluid">
        <div class="row">
            <!-- IF loggedIn -->
        	<button id="new_topic" class="btn btn-primary btn-block">[[category:new_topic_button]]</button>
        	<!-- ELSE -->
        	<a href="#" class="btn btn-primary btn-block visible-wx" onclick="window.location='{config.relative_path}/auth/wechat'">微信一键[[category:guest-login-post]]</a>
        	<a href="{config.relative_path}/login" class="btn btn-primary btn-block hidden-wx">[[category:guest-login-post]]</a>
        	<!-- ENDIF loggedIn -->
        </div>
    </div>
</div>