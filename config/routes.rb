Rails.application.routes.draw do
  root 'main#home'

  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
end