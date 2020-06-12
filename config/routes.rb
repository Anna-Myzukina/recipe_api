Rails.application.routes.draw do
  resources :favorites
  resources :recipes
  post 'auth/sign_up', to: 'api/v1/users#sign_up'
  post 'auth/login', to: 'api/v1/users#login'
  get 'test', to: 'api/v1/users#test'
end
