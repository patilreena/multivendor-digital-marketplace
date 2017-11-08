class SellerController < ApplicationController
	def dashboard
		@products = Product.where(seller_id: current_user.id).includes(:order_items);
	end
end
