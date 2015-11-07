<ul class="categories" itemscope itemtype="http://www.schema.org/ItemList">
	<p>[[category:categories]]</p>

	<!-- BEGIN categories -->
	<!-- IMPORT partials/categories/item.tpl -->
	<!-- END categories -->
</ul>

<div class="row">

	<div class="bootcards-cards">

		<div class="col-sm-6">

			<div class="panel panel-default bootcards-summary">

				<div class="panel-heading">
					<h3 class="panel-title">Dashboard</h3>
				</div>

				<div class="panel-body">
					<div class="row">
					    <!-- BEGIN categories -->
						<div component="categories/category" class="col-xs-6 col-sm-4" data-cid="{categories.cid}" data-numRecentReplies="{categories.numRecentReplies}">
							<!-- IF categories.link -->
                            <a class="bootcards-summary-item" href="{categories.link}" itemprop="url" target="_blank" style="padding-top:35px;{function.generateCategoryBackground}">
                            <!-- ELSE -->
                            <a class="bootcards-summary-item" href="{config.relative_path}/category/{categories.slug}" itemprop="url" style="padding-top:35px;{function.generateCategoryBackground}">
                            <!-- ENDIF categories.link -->
								<i class="fa fa-3x {categories.icon}"></i>
								<h4>
									{categories.name}
									<!-- IF !categories.link -->
                                    <span class="badge {categories.unread-class} label label-info">{categories.totalTopicCount} </span>
                                    <!-- ENDIF !categories.link -->
								</h4>
							</a>
						</div>
						<!-- END categories -->
					</div>
				</div>

				<div class="panel-footer">
					<small class="pull-left">Built with Bootcards - Summary Card</small>
				</div>

			</div>

		</div>

		<div class="col-sm-6">

			<h1>Charts section here!</h1>

		</div>

	</div>

</div>

