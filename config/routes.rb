Rails.application.routes.draw do
  
  devise_for :users
  root 'products#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :products do
    resources :post_comments, only: [:create, :destroy]
    resource :favorites, only: [:create, :destroy]
    post '/favorites_create_for_index/', to: 'favorites#create_for_index'
    delete '/favorites_delete_for_index/', to: 'favorites#destroy_for_index'
    
    
  end

 # resources :product_images, only: [:new, :create, :index, :show, :destroy]
end
