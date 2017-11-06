Rails.application.routes.draw do
  get 'order_items/create'

  get 'order_items/update'

  get 'order_items/destroy'
   
  resources :profile 
  resources :payments
  resources :licenses
  resources :carts
  resources :images
  resources :products do
    get 'download'
    resources :ratings
  end
  resources :orders
  resources :order_items, only: [:create, :update, :destroy]
  resources :charges
  root 'home#index'

  devise_scope :user do
    get 'seller/sign_up'  => 'seller/registrations#new',   :as => :new_seller_registration
  end

  devise_for :users, :controllers => {:registrations => "registrations"}

  get 'hello_page/hello'

  
  get 'contact-me', to: 'messages#new', as: 'new_message'

  post 'contact-me', to: 'messages#create', as: 'create_message'
  # root 'hello_page#hello'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # devise_for :sellers, :class_name => 'Seller', :controllers => {:registrations => "seller/registrations"} do
  #   get   "seller/register" => "seller/registrations#new", :as => :seller_signup
  # end
end
