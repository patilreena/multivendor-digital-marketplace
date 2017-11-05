Rails.application.routes.draw do
  get 'order_items/create'

  get 'order_items/update'

  get 'order_items/destroy'

  resources :payments
  resources :licenses
  resources :carts
  resources :images
  resources :products do
    resources :ratings
  end
  resources :orders
  resources :order_items, only: [:create, :update, :destroy]
  resources :charges
  root 'home#index'

  devise_for :users
  get 'hello_page/hello'
  # root 'hello_page#hello'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # devise_for :sellers, :class_name => 'Seller', :controllers => {:registrations => "seller/registrations"} do
  #   get   "seller/register" => "seller/registrations#new", :as => :seller_signup
  # end
end
