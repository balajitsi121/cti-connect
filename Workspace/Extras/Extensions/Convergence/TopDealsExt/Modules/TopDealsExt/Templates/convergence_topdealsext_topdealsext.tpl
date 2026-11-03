<div class="top-deals-header">

  <div class="text-heading-conrtainer">
    <h2>
      <span class="black-content">{{ConfData.heading1}} </span>
      <span class="blue-content">{{ConfData.heading2}}</span>
    </h2>
  </div>
  <div class="custom-slider-controls desktop-slider-controls">
    <a class="home-top-deals-gallery-prev-icon" data-action="prev-slide"><svg xmlns="http://www.w3.org/2000/svg"
        width="11.534" height="23.034" viewBox="0 0 11.534 23.034">
        <path id="arrow-left" d="M11.534,0V.012L3.983,11.575,11.5,23.034,0,11.533Z" transform="translate(0 0)" />
      </svg></a>
    <a class="home-top-deals-gallery-next-icon " data-action="next-slide"><svg xmlns="http://www.w3.org/2000/svg"
        width="11.534" height="23.034" viewBox="0 0 11.534 23.034">
        <path id="arrow-right" d="M0,0V.012L7.551,11.575.033,23.034l11.5-11.5Z" transform="translate(0 0)" />
      </svg></a>
  </div>
</div>

<style>
  .promo-box{
    background-image: url("{{ConfData.imgContainer}}");
    position: relative;
  }
  .promo-box .promo-link {
  position: absolute;
  top: 0; left: 0; right: 0; bottom: 0;
  z-index: 2;
}
</style>



<div class="antenna-slider-wrapper" style="display: flex;">
  <!-- Static Promo Box -->
  <div class="promo-box">

    {{!-- Comment the static Data --}}

    {{!-- <h4>Grab our Offers</h4>
    <h2>Antennas</h2>
    <p><strong>UPTO 30% OFF</strong></p>
    <p>on premium antennas for extended range!</p>
    <a href="#" class="promo-link">Hurry before the stock runs out!
      <svg xmlns="http://www.w3.org/2000/svg" width="228.234" height="11.133" viewBox="0 0 228.234 11.133">
        <path id="graphics" d="M660.755,1186H432.521v11.133Z" transform="translate(-432.521 -1186)" fill="#0093d1" />
      </svg>

    </a>
    <a data-touchpoint="home" data-hashtag="#/shop-by-category/antennas" class="contact-btn">
      Shop Now
      <svg xmlns="http://www.w3.org/2000/svg" class="btn-right-arrow" width="16.295" height="15.938"
        viewBox="0 0 16.295 15.938">
        <path id="button-arrow" d="M6.555,0V13.881m0,0,6.555-6.555M6.555,13.881,0,7.326"
          transform="translate(1 14.524) rotate(-90)" fill="none" stroke="#00548C" stroke-linecap="round"
          stroke-linejoin="round" stroke-width="2"></path>
      </svg></a> --}}

      <a href="{{ConfData.navigation}}" class="promo-link">
       
      </a>


  </div>

  <!-- Slider Section -->
  <div class="custom-slider-controls mobile-slider-controls">
    <a class="home-top-deals-gallery-prev-icon" data-action="prev-slide"><svg xmlns="http://www.w3.org/2000/svg"
        width="11.534" height="23.034" viewBox="0 0 11.534 23.034">
        <path id="arrow-left" d="M11.534,0V.012L3.983,11.575,11.5,23.034,0,11.533Z" transform="translate(0 0)" />
      </svg></a>
    <a class="home-top-deals-gallery-next-icon " data-action="next-slide"><svg xmlns="http://www.w3.org/2000/svg"
        width="11.534" height="23.034" viewBox="0 0 11.534 23.034">
        <path id="arrow-right" d="M0,0V.012L7.551,11.575.033,23.034l11.5-11.5Z" transform="translate(0 0)" />
      </svg></a>
  </div>
  <div class="product-slider-container">
    <ul class="bxslider-new" data-slider-new="" data-view="TopDeals.Slide">

    </ul>
  </div>
</div>