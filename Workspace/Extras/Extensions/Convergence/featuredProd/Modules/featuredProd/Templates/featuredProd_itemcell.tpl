<div class="product-card">
	<div class="facets-item-cell-grid" data-type="item" data-item-id="{{itemId}}" itemprop="itemListElement" data-track-productlist-list="{{track_productlist_list}}" data-track-productlist-category="{{track_productlist_category}}" data-track-productlist-position="{{track_productlist_position}}" data-sku="{{sku}}">

		<div class="facets-item-cell-grid-image-wrapper">
			<div data-view="ItemThumbnail"></div>
			<a class="facets-item-cell-grid-link-image" href="{{url}}">
				<img class="facets-item-cell-grid-image" src="{{resizeImage thumbnail.url 'thumbnail'}}" alt="{{thumbnail.altimagetext}}" itemprop="image"/>
			</a>
			{{#if isEnvironmentBrowser}}
				<div class="facets-item-cell-grid-quick-view-wrapper">
					<a href="{{url}}" class="facets-item-cell-grid-quick-view-link" data-toggle="show-in-modal">
						<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="20.847" height="13.232" viewBox="0 0 20.847 13.232">
							<defs>
								<clipPath id="clip-path">
									<rect id="Rectangle_105" data-name="Rectangle 105" width="20.847" height="13.232"/>
								</clipPath>
							</defs>
							<g id="Group_989" data-name="Group 989" clip-path="url(#clip-path)">
								<path id="Path_868" data-name="Path 868" d="M10.289,13.231l-.051-.022-.051.022H9.944l-.062-.021-.018,0H9.813c-.014,0-.073.018-.073.018H9.481l-.03-.007c-.24-.055-.48-.091-.735-.13-.239-.036-.486-.073-.731-.127A12.625,12.625,0,0,1,.036,6.909L0,6.846V6.384l.036-.063A12.614,12.614,0,0,1,8.019.256L9.529,0h.594l.051.022L10.225,0H10.6l.051.022L10.7,0h.342l.021.011L11.1,0h.176L12.848.26a12.625,12.625,0,0,1,7.963,6.061l.036.063v.462l-.036.063a12.546,12.546,0,0,1-8.355,6.14c-.167.031-.336.052-.505.074-.221.028-.429.055-.634.1l-.03.007h-.174l-.039-.019-.036,0a.4.4,0,0,1-.06,0l-.086.022h-.255L10.58,13.2l-.057.029ZM1.99,6.6a11.372,11.372,0,0,0,4.89,4.1,9.146,9.146,0,0,0,3.531.718,10.222,10.222,0,0,0,8.064-4.264l.079-.1c.075-.1.253-.325.332-.445-.058-.093-.2-.29-.547-.718L18.3,5.854a10.166,10.166,0,0,0-7.9-4.049q-.263,0-.53.015A10.564,10.564,0,0,0,1.99,6.6" transform="translate(0 0.001)"/>
								<path id="Path_869" data-name="Path 869" d="M27.568,17.541a4.072,4.072,0,0,1-3.3-1.657,4.093,4.093,0,0,1,2.9-6.483c.13-.012.258-.017.385-.017a4.079,4.079,0,1,1,.015,8.157Zm.032-6.349a2.968,2.968,0,0,0-.3.016,2.137,2.137,0,0,0-1.976,2.358,2.181,2.181,0,0,0,2.208,2.177c.073,0,.147,0,.224-.009a2.137,2.137,0,0,0,2.035-2.344,2.163,2.163,0,0,0-2.19-2.2" transform="translate(-17.135 -6.85)"/>
							</g>
						</svg>
						{{translate 'Quick View'}}
					</a>
				</div>
			{{/if}}
		</div>

		<div class="facets-item-cell-grid-details">
			<div class="facets-item-details-custom-sku">
				{{#if categoryName}}
					<div class="custom-category-options">
						<div class="categories-details">
							{{categoryName}}
						</div>
					</div>
				{{/if}}
				<div class="facets-items-data-sku">
					<span class="facets-item-cell-grid-sku-container">Sku: {{sku}}</span>
				</div>
			</div>

			<a class="facets-item-cell-grid-title" href="{{url}}">
				<span itemprop="name">{{name}}</span>
			</a>

			{{#if showPrice}}
				<div class="facets-item-cell-grid-price" data-view="ItemViews.Price"></div>
			{{/if}}

			<div data-view="Cart.QuickAddToCart.new"></div>

			{{#if showOptions}}
				<div data-view="ItemDetails.Options"></div>
			{{/if}}

			{{#if showStock}}
				<div class="facets-item-cell-grid-stock">
					<div data-view="ItemViews.Stock" class="facets-item-cell-grid-stock-message"></div>
				</div>
			{{/if}}

			{{#if showStockDescription}}
				<div data-view="StockDescription"></div>
			{{/if}}
		</div>

	</div>
</div>
