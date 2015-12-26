<div class="category">
	<!-- IMPORT partials/breadcrumbs.tpl -->
	<!-- IMPORT partials/category/subcategory.tpl -->

	<!-- IF children.length --><hr /><!-- ENDIF children.length -->

	<div class="clearfix">
		<!-- IF privileges.topics:create -->
		<button id="new_topic" class="btn btn-primary">[[category:new_topic_button]]</button>
		<!-- ELSE -->
			<!-- IF !loggedIn -->
			<a href="{config.relative_path}/login" class="btn btn-primary">[[category:guest-login-post]]</a>
			<!-- ENDIF !loggedIn -->
		<!-- ENDIF privileges.topics:create -->

		<span class="pull-right">
			<!-- IMPORT partials/category/watch.tpl -->
			<!-- IMPORT partials/category/tools.tpl -->
			<!-- IMPORT partials/category/sort.tpl -->
		</span>
	</div>

	<hr />

	<p>{name}</p>

	<!-- IF !topics.length -->
	<div class="alert alert-warning" id="category-no-topics">
		[[category:no_topics]]
	</div>
	<!-- ENDIF !topics.length -->

	<!-- IMPORT partials/topics_list.tpl -->

	<!-- IF config.usePagination -->
		<!-- IMPORT partials/paginator.tpl -->
	<!-- ENDIF config.usePagination -->
</div>

<!-- IMPORT partials/move_thread_modal.tpl -->

<!-- IF !config.usePagination -->
<noscript>
	<!-- IMPORT partials/paginator.tpl -->
</noscript>
<!-- ENDIF !config.usePagination -->

<!-- IMPORT partials/variables/category.tpl -->

<!-- fixed tabbed footer -->
<div class="navbar navbar-default navbar-fixed-bottom visible-xs clearfix">
    <div class="container-fluid">
        <div class="btn-group btn-group-justified" style="margin-top:2px;">
            <!-- IF privileges.topics:create -->
            <button id="new_topic" class="btn btn-primary" style="width:100%">[[category:new_topic_button]]</button>
            <!-- ELSE -->
                <!-- IF !loggedIn -->
                <a href="#" class="btn btn-primary" onclick="window.location='{config.relative_path}/auth/wechat'">Wechat OneClick</a>
                <a href="{config.relative_path}/login" class="btn btn-primary">[[category:guest-login-post]]</a>
                <!-- ENDIF !loggedIn -->
            <!-- ENDIF privileges.topics:create -->
        </div>
    </div>
</div>