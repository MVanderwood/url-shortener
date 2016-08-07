Rails.application.routes.draw do
  root 'links#new'
  post '/' => 'links#create'

  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
end
