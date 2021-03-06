class Api::V1::UsersController < ApplicationController
    skip_before_action :authenticate_request, only: %i[login sign_up]
    def index
      @users = User.all 
      render json: @users
    end

    def sign_up
        @user = User.create(user_params)
       if @user.save
        response = { message: 'User created successfully'}
        render json: response, status: :created 
       else
        render json: @user.errors, status: :bad
       end 
    end

  #   def create
  #     @user = User.create(user_params)
  #    if @user.save
  #     response = { message: 'User created successfully'}
  #     render json: response, status: :created 
  #    else
  #     render json: @user.errors, status: :bad
  #    end 
  # end
    
    def login
        authenticate params[:email], params[:password]
    end
    def test
        render json: {
              message: 'You have passed authentication and authorization test'
            }
    end



    private
    
    def authenticate(email, password)
        command = AuthenticateUser.call(email, password)
    
        if command.success?
          render json: {
            access_token: command.result,
            message: 'Login Successful'
          }
        else
          render json: { error: command.errors }, status: :unauthorized
        end
    end

    def user_params
        params.permit(
          :name,
          :email,
          :password,
          :password_confirmation,
          :admin
        )
    end
end
