Rails.application.routes.draw do
  get 'welcome/index'

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
  get 'thanks', to: 'charges#thanks', as: 'thanks'
  root 'home#index'
  get 'contact' => 'static_pages#contact'

  devise_scope :user do
    get 'seller/sign_up'  => 'seller/registrations#new',   :as => :new_seller_registration
  end

  devise_for :users, :controllers => {:registrations => "registrations"}

  get 'seller/dashboard'

  
  get 'contact-me', to: 'messages#new', as: 'new_message'

  post 'contact-me', to: 'messages#create', as: 'create_message'

  get 'welcome/index'
  post '/send_email', to: 'welcome#send_email', as: 'send_email'
  # root 'hello_page#hello'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # devise_for :sellers, :class_name => 'Seller', :controllers => {:registrations => "seller/registrations"} do
  #   get   "seller/register" => "seller/registrations#new", :as => :seller_signup
  # end
end
