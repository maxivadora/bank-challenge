Rails.application.routes.draw do
  get 'banks/index'
  post 'sign_up', to: 'users#create'
  post 'login', to: 'auth#login'
  resources :time_deposits, only: [:index, :create]
  resources :banks, only: [:index]
  
  # API Documentation
  apipie
end
