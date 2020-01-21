Rails.application.routes.draw do
  resources :coordinates
  resources :memberships
  resources :reviews
  resources :images
  resources :locations
  resources :gyms
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
