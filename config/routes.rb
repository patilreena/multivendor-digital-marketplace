Rails.application.routes.draw do
  root 'home#index'

  devise_for :users
  get 'hello_page/hello'
  # root 'hello_page#hello'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # devise_for :sellers, :class_name => 'Seller', :controllers => {:registrations => "seller/registrations"} do
  #   get   "seller/register" => "seller/registrations#new", :as => :seller_signup
  # end
end
