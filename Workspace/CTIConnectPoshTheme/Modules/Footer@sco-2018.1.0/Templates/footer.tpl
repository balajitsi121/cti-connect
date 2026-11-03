{{!-- Edited for Posh Theme --}}

<div data-view="Global.BackToTop"></div>
<div class="footer-banner-wrapper">
	<div id="banner-footerFull" class="content-banner banner-footer footer-banner" data-cms-area="global_banner_footerFull" data-cms-area-filters="global"></div>
	<div id="banner-footer1" class="content-banner banner-footer footer-banner-1" data-cms-area="global_banner_footer1" data-cms-area-filters="global"></div>
	<div id="banner-footer5" class="content-banner banner-footer footer-banner-5" data-cms-area="global_banner_footer5" data-cms-area-filters="global"></div>
</div>


<section class="footer-wrapper">
	<div class="footer-content-wrapper">
		<div id="footer-logo-card" class="footer-logo" data-cms-area="footer_logo_part" data-cms-area-filters="global"></div>
		
		<div class="footer-content-newsletter">
      {{#if extraFooterView.showLegacyNewsletter}}
        <div data-view="FooterContent"></div>
      {{else}}
        <div class="newsletter-cct-area" data-cms-area="newsletter-cct-area" data-cms-area-filters="global"></div>
      {{/if}}
		</div>
		<div class="footer-content">
			<div class="footer-content-nav">
				{{#if extraFooterView.col1Links}}
					<div class="footer-content-nav-list-1">
						{{#each extraFooterView.col1Links}}
							{{#unless href}}
								<div class="footer-column-heading-listitem"><h4 class="footer-column-heading">{{text}}</h4></div>
							{{/unless}}
						{{/each}}
						<ul class="footer-column-nav">
							{{#each extraFooterView.col1Links}}
								{{#if href}}
									<li class="footer-column-link-listitem"><a class="footer-column-link" {{objectToAtrributes item}} data-hashtag="{{datahashtag}}" data-touchpoint="{{datatouchpoint}}" data-target="{{datatarget}}" {{#if datatarget includeZero=true}}target="_blank"{{/if}}>{{text}}</a></li>
								{{/if}}
							{{/each}}
						</ul>
					</div>
	            {{/if}}
				{{#if extraFooterView.col2Links}}
					<div class="footer-content-nav-list-2">
						{{#each extraFooterView.col2Links}}
							{{#unless href}}
								<div class="footer-column-heading-listitem"><h4 class="footer-column-heading">{{text}}</h4></div>
							{{/unless}}
						{{/each}}
						<ul class="footer-column-nav">
							{{#each extraFooterView.col2Links}}
								{{#if href}}
									<li class="footer-column-link-listitem"><a class="footer-column-link" {{objectToAtrributes item}} data-hashtag="{{datahashtag}}" data-touchpoint="{{datatouchpoint}}" data-target="{{datatarget}}" {{#if datatarget includeZero=true}}target="_blank"{{/if}}>{{text}}</a></li>
								{{/if}}
							{{/each}}
						</ul>
					</div>
	            {{/if}}
				{{#if extraFooterView.col3Links}}
					<div class="footer-content-nav-list-3">
						{{#each extraFooterView.col3Links}}
							{{#unless href}}
								<div class="footer-column-heading-listitem"><h4 class="footer-column-heading">{{text}}</h4></div>
							{{/unless}}
						{{/each}}
						<ul class="footer-column-nav">
							{{#each extraFooterView.col3Links}}
								{{#if href}}
									<li class="footer-column-link-listitem"><a class="footer-column-link" {{objectToAtrributes item}} data-hashtag="{{datahashtag}}" data-touchpoint="{{datatouchpoint}}" data-target="{{datatarget}}" {{#if datatarget includeZero=true}}target="_blank"{{/if}}>{{text}}</a></li>
								{{/if}}
							{{/each}}
						</ul>
					</div>
	            {{/if}}
				{{#if extraFooterView.col4Links}}
					<div class="footer-content-nav-list-4">
						{{#each extraFooterView.col4Links}}
							{{#unless href}}
								<div class="footer-column-heading-listitem"><h4 class="footer-column-heading">{{text}}</h4></div>
							{{/unless}}
						{{/each}}
						<ul class="footer-column-nav">
							{{#each extraFooterView.col4Links}}
								{{#if href}}
									<li class="footer-column-link-listitem"><a class="footer-column-link" {{objectToAtrributes item}} data-hashtag="{{datahashtag}}" data-touchpoint="{{datatouchpoint}}" data-target="{{datatarget}}" {{#if datatarget includeZero=true}}target="_blank"{{/if}}>{{text}}</a></li>
								{{/if}}
							{{/each}}
						</ul>
					</div>
	            {{/if}}
			</div>
		</div>
	</div>
</section>

{{#with extraFooterView.copyright}}
    {{#unless hide}}
    <section class="footer-content-copyright-wrapper">
        <div class="footer-content-copyright">
            <div class="footer-cy-social">
				<div class="fotter-cpy-content">
					<span class="footer-cpy">
					{{#if showRange}}
						{{translate '&copy; $(0) &#8211; $(1) <b>$(2)</b>' initialYear currentYear companyName}}
						<!-- an en dash &#8211; is used to indicate a range of values -->
					{{else}}
						{{translate '&copy; $(0) <b>$(1)</b>' currentYear companyName}}
					{{/if}}
					</span>
					<span class="footer-extra-info">{{#if ../extraFooterView.text}}{{{../extraFooterView.text}}}{{/if}}</span>
				</div>
				<div id="fotter-social-icon" class="social-icon" data-cms-area="header_top_social_icon" data-cms-area-filters="global"></div>
				<div id="footer-payment-card" class="footer-payment-card" data-cms-area="footer_payment_card" data-cms-area-filters="global"></div>
			</div>
        </div>
    </section>
    {{/unless}}
{{/with}}


{{!----
Use the following context variables when customizing this template:

	showFooterNavigationLinks (Boolean)
	footerNavigationLinks (Array)

----}}

