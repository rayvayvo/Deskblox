Rails.application.routes.draw do
  get 'blocks/index'

  resources :users
  resources :blocks

  root to: 'dashboard#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
