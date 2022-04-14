Rails.application.routes.draw do
  get 'public_recipies/index'
  get 'public_recipies/show'
  devise_for :users
  resources :foods
  resources :recipies
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "recipies#index"
end
