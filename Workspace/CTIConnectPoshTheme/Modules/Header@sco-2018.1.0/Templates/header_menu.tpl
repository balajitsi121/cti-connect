{{!-- Edited for Posh Theme --}}

<nav class="header-menu-secondary-nav">

	<ul class="header-menu-level1">

		{{#each categories}}
			{{#if text}}
				<li {{#if categories}}data-toggle="categories-menu"{{/if}} {{#if @first}}class="header-main-cat"{{/if}}>
					<a class="{{class}}" {{objectToAtrributes this}}>{{translate text}} {{#if @first}} <svg xmlns="http://www.w3.org/2000/svg" width="24.479" height="18.407" viewBox="0 0 24.479 18.407">
  <g id="Group_2" data-name="Group 2" transform="translate(1.5 1.5)">
    <path id="Line_1" data-name="Line 1" d="M21.479,1.5H0A1.5,1.5,0,0,1-1.5,0,1.5,1.5,0,0,1,0-1.5H21.479a1.5,1.5,0,0,1,1.5,1.5A1.5,1.5,0,0,1,21.479,1.5Z" fill="#fff"/>
    <path id="Line_2" data-name="Line 2" d="M21.479,1.5H0A1.5,1.5,0,0,1-1.5,0,1.5,1.5,0,0,1,0-1.5H21.479a1.5,1.5,0,0,1,1.5,1.5A1.5,1.5,0,0,1,21.479,1.5Z" transform="translate(0 7.703)" fill="#fff"/>
    <path id="Line_3" data-name="Line 3" d="M21.479,1.5H0A1.5,1.5,0,0,1-1.5,0,1.5,1.5,0,0,1,0-1.5H21.479a1.5,1.5,0,0,1,1.5,1.5A1.5,1.5,0,0,1,21.479,1.5Z" transform="translate(0 15.407)" fill="#fff"/>
  </g>
</svg>
 {{/if}}</a>
					{{#if categories}}
					<ul class="header-menu-level-container">
						<li>
							<ul class="header-menu-level2" >
								{{#each categories}}
								<li {{#if categories}}class="categories-menu-arrow"{{/if}}>
									<a class="{{class}}" {{objectToAtrributes this}}>{{translate text}}</a>
										{{#if categories}}
											<ul class="header-menu-level3">
												{{#each categories}}
												<li>
													<a class="{{class}}" {{objectToAtrributes this}}>{{translate text}}</a>
												</li>
												{{/each}}
											</ul>
										{{/if}}
								</li>
								{{/each}}
							</ul>
						</li>
					</ul>
					{{/if}}
				</li>
			{{/if}}
		{{/each}}
	</ul>
</nav>




{{!----
Use the following context variables when customizing this template:

	categories (Array)
	showExtendedMenu (Boolean)
	showLanguages (Boolean)
	showCurrencies (Boolean)

----}}

