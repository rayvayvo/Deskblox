Rails.application.routes.draw do

  root to: 'dashboard#index'
  get 'news/index'

  get 'blocks/index'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'



  resources :users
  resources :blocks
  resources :weather, only: [:index]
  resources :settings, only: [:index, :update]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
