Rails.application.routes.draw do
  resources :cheeses
  resources :posts
  devise_for :users
  resources :homes

  #AUTHORISATION
  resources :users, only: [:destroy]

  # specify where homepage is so it will redirect you here after signing in
  get '/', to: 'homes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
