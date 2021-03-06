		<div class="aside">	
			<div class="side_menu">
				<!-- Nav tabs -->
				<ul class="nav nav-tabs" role="tablist">
					<li role="presentation" {if !$leftNavBrandActive}class="active"{/if}><a href="#products" aria-controls="products" role="tab" data-toggle="tab">Products</a></li>
					<li role="presentation" {if $leftNavBrandActive}class="active"{/if}><a href="#brands" aria-controls="brands" role="tab" data-toggle="tab">Brands</a></li>
				</ul>
				<!-- Tab panes -->
				<div class="tab-content">
					<div role="tabpanel" class="tab-pane {if !$leftNavBrandActive}active{/if}" id="products">
						<dl class="side_menu_items">
							<dt>
								<a href="/Product?filter[status]=0&filter[type]=1">Escalator Parts</a>
							</dt>
							{foreach $categoryList['type'][1] as $parentCategory}
							<dd {if $categoryList['parent'][$parentCategory->getId()] neq ""}class="side_has_submenu"{/if}>
								<a href=
								{if $categoryList['parent'][$parentCategory->getId()] neq ""}
								"/Product?filter[status]=0&filter[parentCategory]={$parentCategory->getId()}"
								{else}
								"/Product?filter[status]=0&filter[category]={$parentCategory->getId()}"
								{/if}
								>{$parentCategory->getName()}</a>
								{if $categoryList['parent'][$parentCategory->getId()] neq ""}
								<ul class="side_submenu list-unstyled">
									{foreach $categoryList['parent'][$parentCategory->getId()] as $category}
									<li><a href="/Product?filter[status]=0&filter[category]={$category->getId()}">{$category->getName()}</a></li>
									{/foreach}
								</ul>
								{/if}
							</dd>
							{/foreach}
						</dl>
						<dl class="side_menu_items">
							<dt>
								<a href="/Product?filter[status]=0&filter[type]=2">Elevator Parts</a>
							</dt>
							{foreach $categoryList['type'][2] as $parentCategory}
							<dd {if $categoryList['parent'][$parentCategory->getId()] neq ""}class="side_has_submenu"{/if}>
								<a href=
								{if $categoryList['parent'][$parentCategory->getId()] neq ""}
								"/Product?filter[status]=0&filter[parentCategory]={$parentCategory->getId()}"
								{else}
								"/Product?filter[status]=0&filter[category]={$parentCategory->getId()}"
								{/if}
								>{$parentCategory->getName()}</a>
								{if $categoryList['parent'][$parentCategory->getId()] neq ""}
								<ul class="side_submenu list-unstyled">
									{foreach $categoryList['parent'][$parentCategory->getId()] as $category}
									<li><a href="/Product?filter[status]=0&filter[category]={$category->getId()}">{$category->getName()}</a></li>
									{/foreach}
								</ul>
								{/if}
							</dd>
							{/foreach}
						</dl>

					</div>
					<div role="tabpanel" class="tab-pane {if $leftNavBrandActive}active{/if}" id="brands">
						<ul class="side_brands_items list-unstyled">
							{foreach $brandList as $brand}
							<li>
								<a href="/Product?filter[status]=0&filter[brand]={$brand->getId()}">
									{if $brand->getLogo()->getId() > 0}
									<img src="{$brand->getLogo()->getFileURL()}"/>
									{else}
									{$brand->getName()}
									{/if}
								</a>
							</li>
							{/foreach}
						</ul>
					</div>
				</div>
			</div>

			<div class="side_contact">
				<div class="side_contact_title">
					<h3>Contact us</h3>
				</div>
				<div class="side_contact_content">
					<h3 class="scc_title">XI'AN PASSION ELEVATOR PARTS CO.LTD</h3>
					<ul class="list-unstyled">
						<li><b>Contact Person: </b>Mrs. Vicky</li>
						<li><b>E-mail: </b><a href="mailto:vicky@passionelevator.com">vicky@passionelevator.com</a></li>
						<li><b>Skype: </b><a href="javascript:;">vicky.passion1</a></li>
						<li><b>WhatsApp: </b>+86 18049060438</li>
						<li><b>Mobile: </b>+86 18049060438</li>
					</ul>
				</div>
			</div>
		</div>
