Rails.application.routes.draw do
  
  devise_for :users
  root 'products#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :products
  resources :product_images, only: [:new, :create, :index, :show, :destroy]
end
