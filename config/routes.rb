Rails.application.routes.draw do
  get 'shopping_lists/index'
  get 'shopping_lists/show'
  devise_for :users
  resources :foods
  resources :recipies
  resources :public_recipies
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "recipies#index"
end
