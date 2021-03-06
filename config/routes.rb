Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   root to: "static_pages#root"

   namespace :api, defaults: { format: :json } do
     resources :users, only: [:index, :show, :create]
     resource :session, only: [:create, :destroy]
     resources :photos, only: [:create, :index, :show, :update, :destroy]
     resources :albums, only: [:create, :index, :show, :update, :destroy]
     resources :comments, only: [:create, :index, :show, :update, :destroy]
   end
end

