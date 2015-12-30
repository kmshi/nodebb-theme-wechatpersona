<div class="topic">
	<!-- IMPORT partials/breadcrumbs.tpl -->

	<h1 component="post/header" itemprop="name">

		<i class="fa fa-thumb-tack <!-- IF !pinned -->hidden<!-- ENDIF !pinned -->"></i> <i class="fa fa-lock <!-- IF !locked -->hidden<!-- ENDIF !locked -->"></i> <span class="topic-title" component="topic/title">{title}</span>
		<!-- IMPORT partials/topic/sort.tpl -->

		<button component="topic/follow" class="btn hidden-xs hidden-sm <!-- IF isFollowing -->hidden<!-- ENDIF isFollowing -->">
			<span>[[topic:watch]]</span> <i class="fa fa-eye"></i>
		</button>

		<button component="topic/unfollow" class="btn hidden-xs hidden-sm <!-- IF !isFollowing -->hidden<!-- ENDIF !isFollowing -->">
			<span>[[topic:unwatch]]</span> <i class="fa fa-eye-slash"></i>
		</button>

		<span class="browsing-users hidden hidden-xs hidden-sm pull-right">
			<span>[[category:browsing]]</span>
			<div component="topic/browsing/list" class="thread_active_users active-users inline-block"></div>
			<small class="hidden">
				<i class="fa fa-users"></i> <span component="topic/browsing/count" class="user-count"></span>
			</small>
		</span>
	</h1>

	<div component="topic/deleted/message" class="alert alert-warning<!-- IF !deleted --> hidden<!-- ENDIF !deleted -->">[[topic:deleted_message]]</div>

	<ul component="topic" class="posts" data-tid="{tid}">
		<!-- BEGIN posts -->
			<li component="post" class="clearfix <!-- IF posts.deleted -->deleted<!-- ENDIF posts.deleted -->" <!-- IMPORT partials/data/topic.tpl -->>
				<a component="post/anchor" name="{posts.index}"></a>

				<meta itemprop="datePublished" content="{posts.relativeTime}">
				<meta itemprop="dateModified" content="{posts.relativeEditTime}">

				<!-- IMPORT partials/topic/post.tpl -->
			</li>

			<!-- IF !posts.index -->
			<li class="post-bar" data-index="{posts.index}">
				<!-- IMPORT partials/post_bar.tpl -->
			</li>
			<!-- ENDIF !posts.index -->
		<!-- END posts -->
	</ul>

	<div class="post-bar bottom-post-bar <!-- IF unreplied -->hidden<!-- ENDIF unreplied -->">
		<!-- IMPORT partials/post_bar.tpl -->
	</div>

	<!-- IF config.usePagination -->
		<!-- IMPORT partials/paginator.tpl -->
	<!-- ENDIF config.usePagination -->

	<!-- IMPORT partials/move_thread_modal.tpl -->
	<!-- IMPORT partials/fork_thread_modal.tpl -->
	<!-- IMPORT partials/move_post_modal.tpl -->
</div>

<!-- IF !config.usePagination -->
<noscript>
	<!-- IMPORT partials/paginator.tpl -->
</noscript>
<!-- ENDIF !config.usePagination -->

<!-- IMPORT partials/variables/topic.tpl -->

<!-- fixed tabbed footer -->
<div class="navbar navbar-primary navbar-fixed-bottom visible-xs">
    <div class="container-fluid">
        <div class="row">
            <a component="topic/reply" class="btn btn-primary btn-block <!-- IF !privileges.topics:reply -->hidden<!-- ENDIF !privileges.topics:reply -->">[[topic:reply]]</a>

            <!-- IF loggedIn -->

            <!-- IF !privileges.topics:reply -->
            <!-- IF locked -->
            <a component="topic/reply/locked" class="btn btn-primary btn-block" disabled><i class="fa fa-lock"></i> [[topic:locked]]</a>
            <!-- ENDIF locked -->
            <!-- ENDIF !privileges.topics:reply -->

            <!-- IF !locked -->
            <a component="topic/reply/locked" class="btn btn-primary btn-block hidden" disabled><i class="fa fa-lock"></i> [[topic:locked]]</a>
            <!-- ENDIF !locked -->

            <!-- ELSE -->

            <!-- IF !privileges.topics:reply -->
            <a href="#" class="btn btn-primary btn-block visible-wx" onclick="window.location='{config.relative_path}/auth/wechat'">微信一键[[topic:guest-login-reply]]</a>
            <a href="{config.relative_path}/login" class="btn btn-primary btn-block hidden-wx">[[topic:guest-login-reply]]</a>
            <!-- ENDIF !privileges.topics:reply -->

            <!-- ENDIF loggedIn -->
        </div>
    </div>
</div>