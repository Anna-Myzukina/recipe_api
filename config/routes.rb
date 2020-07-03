Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :recipes, only: [:index, :show, :update, :destroy, :create] do
        post :favorite, to:'favorites#create'
        delete :unfavorite, to:'favorites#destroy'
      end
      resources :users, only: [:index, :show, :update, :destroy]
    end
  end

  post 'auth/sign_up', to: 'api/v1/users#sign_up'
  post 'auth/login', to: 'api/v1/users#login'
end
