Rails.application.routes.draw do
  post 'notification', to: 'notification#create'
  root to: 'home#index'  
  devise_for :users
  resources :products
  get 'order/new'
  post 'order/create'
  get 'order/index'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
