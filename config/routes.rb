Rails.application.routes.draw do
  post 'sign_up', to: 'users#create'
  post 'login', to: 'auth#login'
end
