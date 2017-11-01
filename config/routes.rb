Rails.application.routes.draw do
  resources :payments
  resources :licenses
  resources :cart_products
  resources :carts
  resources :images
  resources :products
  resources :ratings
  resources :orders
  root 'home#index'

  devise_for :users
  get 'hello_page/hello'
  # root 'hello_page#hello'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # devise_for :sellers, :class_name => 'Seller', :controllers => {:registrations => "seller/registrations"} do
  #   get   "seller/register" => "seller/registrations#new", :as => :seller_signup
  # end
end
