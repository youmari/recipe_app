Rails.application.routes.draw do
  devise_for :users
  resources :foods
  resources :recipies
  resources :public_recipies
  resources :shopping_lists
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "foods#index"
end
