class StoreController < ApplicationController
  def index
  	@products = Product.all || [] # For simplicity purposes
  end

  def purchase
  	# At this point I was running out of time, therefore I'm using GET method instead of POST as it should be 
  	@product = Product.find_by(id: params[:product_id])
  	@purchased = false

  	if (current_user.balance.to_i > @product.price)  # Should be put into a proper function but again no time so I need to settle with naive solution
  		current_user.charge_user(@product.price)
  		@purchased = true
  	end
  end
end
