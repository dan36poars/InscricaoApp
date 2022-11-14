Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/home/index', to: 'home#index'
  root 'home#index'
  resources :subscripts, only: [:new, :create, :index]
end