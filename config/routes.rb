Rails.application.routes.draw do
  namespace :api do
    namespace :version1 do
      get 'recipes/index'
      post 'recipes/create'
      get '/show/:id', to: 'recipes#show'
      delete '/destroy/:id', to: 'recipes#destroy'
    end
  end
  root 'homepage#index'
  post 'auth/register', to: 'users#register'
  post 'auth/login', to: 'users#login'
  get 'test', to: 'users#test'
  get '/*path' => 'homepage#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
