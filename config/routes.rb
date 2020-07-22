Rails.application.routes.draw do
  resources :favorites
  namespace :api do
    namespace :v1 do
      resources :recipes, only: [:index, :show, :update, :destroy, :create] do
      resources :favorites, only: [:destroy, :create]
      end
      resources :users, only: [:index, :show, :update, :destroy]
    end
  end

  post 'auth/sign_up', to: 'api/v1/users#sign_up'
  post 'auth/login', to: 'api/v1/users#login'
end
