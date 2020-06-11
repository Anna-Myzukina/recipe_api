Rails.application.routes.draw do
  post 'auth/sign_up', to: 'api/v1/users#sign_up'
  post 'auth/login', to: 'api/v1/users#login'
  get 'test', to: 'api/v1/users#test'
end
