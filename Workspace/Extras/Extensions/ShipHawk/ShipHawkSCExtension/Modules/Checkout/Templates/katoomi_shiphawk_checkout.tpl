<div class="order-wizard-shiphawk-module">
  <h3 class="order-wizard-shiphawk-module-title">
    {{title}}
  </h3>
  {{#if showEnterShippingAddressFirst}}
  <div class="order-wizard-shipmethod-module-message">
    {{translate 'Warning: Please enter a valid shipping address first'}}
  </div>
  {{else}}
  {{#if showLoadingMethods}}
  <div class="order-wizard-shiphawk-module-message">
    {{translate 'Loading...'}}
  </div>
  {{else}}
  {{#if shippingMethods}}
  {{#if showSelectForShippingMethod}}
  <select data-action="select-delivery-option" data-action="edit-module"
    class="order-wizard-shipmethod-module-option-select">
    <option>{{translate 'Select a delivery method'}}</option>

    {{#each shippingMethods}}
    <option {{#if isActive}}selected{{/if}} value="{{id}}" id="delivery-options-{{id}}">{{currency_symbol}}{{price}} -
      {{rate_display_name}} {{#if showEstDeliveryDate}}(Estimated Delivery By: {{est_delivery_date}}
      {{est_delivery_time}}){{/if}}</option>
    {{/each}}
  </select>
  {{else}}
  {{#each shippingMethods}}
  <a data-action="select-delivery-option-radio"
    class="order-wizard-shiphawk-module-option order-wizard-shiphawk-module-option-active" data-value="{{id}}">
    <input type="radio" name="delivery-options" data-action="edit-module" class="order-wizard-shiphawk-module-checkbox"
      {{#if isActive}}checked{{/if}} value="{{id}}" id="delivery-options-{{id}}" />

    <span class="order-wizard-shiphawk-module-option-name">{{rate_display_name}}
      <span class="order-wizard-shiphawk-module-option-price">{{currency_symbol}}{{price}}</span>
      {{#if showEstDeliveryDate}}<br><small>Estimated Delivery By: {{est_delivery_date}}
        {{est_delivery_time}}</small>{{/if}}
    </span>
  </a>
  {{/each}}
  {{/if}}
  {{else}}
  <div class="order-wizard-shiphawk-module-message">
    {{translate 'Warning: No Delivery Methods are available for this address'}}
  </div>
  {{/if}}
  {{/if}}
  {{#if liftgateDelivery }}
  <div class="address-details-container-multiselect-address-selector">
    <label class="address-details-container-multiselect-address-selector-checkbox">
      <input type="checkbox" {{#if isliftgateDeliveryCheck}}checked{{/if}} {{#if showLoadingMethods}}disabled{{/if}} data-id="accesorial-options-liftgateDelivery"
        data-action="edit-module" value="{{isliftgateDeliveryCheck}}" name="accesorial-options"
        id="custrecord_shiphawk_ext_liftgate_checked" />
      <span class="order-wizard-shiphawk-module-option-name">Liftgate Delivery</span>
    </label>
  </div>
  {{/if}}

  {{#if limitedAccessDelivery }}
  <div class="address-details-container-multiselect-address-selector">
    <label class="address-details-container-multiselect-address-selector-checkbox">
      <input type="checkbox" {{#if islimitedAccessDeliveryCheck}}checked{{/if}} {{#if showLoadingMethods}}disabled{{/if}}
        data-id="accesorial-options-limitedAccessDelivery" data-action="edit-module"
        value="{{islimitedAccessDeliveryCheck}}" name="accesorial-options"
        id="custrecord_shiphawk_ext_limited_access_checked" />
      <span class="order-wizard-shiphawk-module-option-name">Limited Access Delivery</span>
    </label>
  </div>
  {{/if}}

  {{#if scheduleAppointmentDelivery}}
  <div class="address-details-container-multiselect-address-selector">
    <label class="address-details-container-multiselect-address-selector-checkbox">
      <input type="checkbox" {{#if isscheduleAppointmentDeliveryCheck}}checked{{/if}} {{#if showLoadingMethods}}disabled{{/if}}
        data-id="accesorial-options-scheduleAppointmentDelivery" data-action="edit-module"
        value="{{isscheduleAppointmentDeliveryCheck}}" name="accesorial-options"
        id="custrecord_shiphawk_ext_schedule_deliver_checked" />
      <span class="order-wizard-shiphawk-module-option-name">Schedule Appointment Delivery</span>
    </label>
  </div>
  {{/if}}

  {{#if notifyPriorDelivery}}
  <div class="address-details-container-multiselect-address-selector">
    <label class="address-details-container-multiselect-address-selector-checkbox">
      <input type="checkbox" {{#if isnotifyPriorDeliveryCheck}}checked{{/if}} {{#if showLoadingMethods}}disabled{{/if}}
        data-id="accesorial-options-notifyPriorDelivery" data-action="edit-module"
        value="{{isnotifyPriorDeliveryCheck}}" name="accesorial-options"
        id="custrecord_shiphawk_ext_notify_prior_checked" />
      <span class="order-wizard-shiphawk-module-option-name">Notify Prior Delivery</span>
    </label>
  </div>
  {{/if}}

  {{#if insideDelivery}}
  <div class="address-details-container-multiselect-address-selector">
    <label class="address-details-container-multiselect-address-selector-checkbox">
      <input type="checkbox" {{#if isinsideDeliveryCheck}}checked{{/if}} {{#if showLoadingMethods}}disabled{{/if}} data-id="accesorial-options-insideDelivery"
        data-action="edit-module" value="{{isinsideDeliveryCheck}}" name="accesorial-options"
        id="custrecord_shiphawk_ext_inside_delivery_checked" />
      <span class="order-wizard-shiphawk-module-option-name">Inside Delivery</span>
    </label>
  </div>
  {{/if}}
  {{/if}}
</div>


<!--
  Available helpers:
  {{ getExtensionAssetsPath "img/image.jpg"}} - reference assets in your extension

  {{ getExtensionAssetsPathWithDefault context_var "img/image.jpg"}} - use context_var value i.e. configuration variable. If it does not exist, fallback to an asset from the extension assets folder

  {{ getThemeAssetsPath context_var "img/image.jpg"}} - reference assets in the active theme

  {{ getThemeAssetsPathWithDefault context_var "img/theme-image.jpg"}} - use context_var value i.e. configuration variable. If it does not exist, fallback to an asset from the theme assets folder
-->
