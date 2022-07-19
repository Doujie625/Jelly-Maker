Rails.application.routes.draw do
  resources :sheets
  resources :styles
  resources :sprites do
    resources :paths
  end
  root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
