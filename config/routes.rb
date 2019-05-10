Rails.application.routes.draw do
  post 'sign_up', to: 'users#create'
  post 'login', to: 'auth#login'
  resources :time_deposits, only: [:index, :create]
end
