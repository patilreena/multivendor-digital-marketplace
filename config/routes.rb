Rails.application.routes.draw do
  root 'home#index'

  devise_for :users
  get 'hello_page/hello'
  # root 'hello_page#hello'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
