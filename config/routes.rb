Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/home/index', to: 'home#index'
  root 'home#index'
  get '/cursos', to: 'cursos#index'
  resources :subscripts, only: %i[new create index]
  # Mapped from database
  namespace :api do
    namespace :v1 do
      resources :subscripts, only: [:index, :create]
    end
  end
end
