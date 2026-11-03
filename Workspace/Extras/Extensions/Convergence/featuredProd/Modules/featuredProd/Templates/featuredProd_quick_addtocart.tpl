<form class="cart-quickaddtocart" data-action="add-to-cart">
	<div data-view="ProductViewsPrice.Price" class="cart-quickaddtocart-price"></div>
	{{#if showQuickAddToCartButton}}
        <div class="cart-quick-container">
            <div class="discount-details">
                <span>30% OFF</span>
            </div>
		    <div class="custom-add-to-card-container custom-details-quick-add-to-cart" data-view="AddToCart">
			    <input name="quantity" data-action="setquantity" class="cart-quickaddtocart-quantity" type="number" min="{{minimumQuantity}}"{{#if isMaximumQuantity}} max="{{maximumQuantity}}"{{/if}} value="{{quantity}}"/>
		    </div>
        </div>
	{{/if}}
</form>
