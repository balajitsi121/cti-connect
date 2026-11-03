<div class="featured-products">
  <div class="section-header">
    <div class="text-heading-conrtainer">
      <h2>
        <span class="black-content">{{ConfData.heading1}} </span>
        <span class="blue-content"> {{ConfData.heading2}}</span>
      </h2>
    </div>
  </div>

  <div class="product-grid featured_prod">
    <!-- Promo Box -->
    <div class="promo-box" style="background-image: url('{{ConfData.imgContainer}}');background-position: center center;background-repeat: no-repeat;background-size: cover;position: relative;">
      <a href="{{ConfData.navigation}}" class="promo-link" style="position: absolute;top: 0;left: 0;right: 0;bottom: 0;z-index: 2;width:100%;height:100%;"></a>
    </div>

    <!-- Product Cards Start -->
    <div data-view="Featured.Prod.Items" class="product-items-wrapper"></div>
    <!-- Product Cards End -->
  </div>
</div>