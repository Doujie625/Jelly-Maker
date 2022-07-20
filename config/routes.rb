Rails.application.routes.draw do
  resources :sprites
  devise_for :users

  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
 end
  resources :sheets
  root 'welcome#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
