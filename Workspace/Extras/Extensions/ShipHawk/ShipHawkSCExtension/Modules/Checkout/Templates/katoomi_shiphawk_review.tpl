{{#if showShippingInformation}}
<section class="order-wizard-showshipments-module-shipping-details">
    <div class="order-wizard-showshipments-module-shipping-details-body">
        <h4 class="order-wizard-showshipments-module-shipping-title">
            {{translate 'Ship to $(0)' shippingAddress}}
        </h4>

        <div class="order-wizard-showshipments-module-shipping-details-address">
            {{#if showShippingAddress}}
            <div class="order-wizard-showshipments-module-shipping-details-address-view" data-view="Shipping.Address">
            </div>
            {{else}}
            <a data-action="edit-module" href="{{{editUrl}}}?force=true"
                class="order-wizard-showshipments-module-shipping-details-address-link">
                {{translate 'Please select a valid shipping address'}}
            </a>
            {{/if}}
        </div>
        <div class="order-wizard-showshipments-module-shipping-details-items" data-view="Items.Collection"></div>
     
            {{#if shippingMethods}}
            <h4 class="order-wizard-showshipments-module-shipping-title">
                {{translate 'Delivery Method'}}
            </h4>
            <select data-action="select-delivery-option" data-action="edit-module" class="order-wizard-shipmethod-module-option-select">
                <option>{{translate 'Select a delivery method'}}</option>
                {{#each shippingMethods}}
                <option {{#if isActive}}selected{{/if}} value="{{id}}" id="delivery-options-{{id}}">
                  {{currency_symbol}}{{price}} - {{rate_display_name}} {{#if est_delivery_date_on}}(Estimated Delivery: {{est_delivery_date}} {{est_delivery_time}}){{/if}}
                </option>
                {{/each}}
            </select>
            {{else}}
            <div class="order-wizard-shiphawk-module-message">
                {{translate 'Warning: No Delivery Methods are available'}}
            </div>
            {{/if}}
    </div>
</section>
{{/if}}

<!--
  Available helpers:
  {{ getExtensionAssetsPath "img/image.jpg"}} - reference assets in your extension
  
  {{ getExtensionAssetsPathWithDefault context_var "img/image.jpg"}} - use context_var value i.e. configuration variable. If it does not exist, fallback to an asset from the extension assets folder
  
  {{ getThemeAssetsPath context_var "img/image.jpg"}} - reference assets in the active theme
  
  {{ getThemeAssetsPathWithDefault context_var "img/theme-image.jpg"}} - use context_var value i.e. configuration variable. If it does not exist, fallback to an asset from the theme assets folder
-->
