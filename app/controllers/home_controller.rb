class HomeController < ApplicationController
  def index
  	 @products = Product.all.order("created_at DESC").limit(10)
  end
end
