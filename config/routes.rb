Rails.application.routes.draw do
  get 'welcome/index'

  get 'order_items/create'

  get 'order_items/update'

  get 'order_items/destroy'
   
  resources :profile 
  resources :licenses
  resources :carts
  resources :images
  resources :products do
    get 'download'
  end
  resources :orders
  resources :order_items, only: [:create, :update, :destroy]
  resources :charges
  get 'thanks', to: 'charges#thanks', as: 'thanks'
  root 'home#index'
  #get 'contact' => 'static_pages#contact'

  devise_scope :user do
    get 'seller/sign_up'  => 'seller/registrations#new',   :as => :new_seller_registration
  end

  devise_for :users, :controllers => {:registrations => "registrations"}

  get 'seller/dashboard'

  
  #get 'contact-me', to: 'messages#new', as: 'new_message'

  #post 'contact-me', to: 'messages#create', as: 'create_message'

  get 'contact', to: 'contact#index', as: 'contact'
  post '/send_email', to: 'contact#send_email', as: 'send_email'
end
