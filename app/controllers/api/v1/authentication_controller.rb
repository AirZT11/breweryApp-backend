class Api::V1::AuthenticationController < ApplicationController
  # class AuthenticationError < StandardError; end
  
  # rescue_from ActionController::ParameterMissing, with: :parameter_missing
  # rescue_from AuthenticationError, with: :handle_unauthenticated

  # def login
  #   raise AuthenticationError unless user.authenticate(params.require(:password))
  #   token = AuthenticationTokenService.call(user.id)

  #   render json: { token: token }, status: :created
  
  # end

  # private

  # def user
  #   @user ||= User.find_by(username: params.require(:username))
  # end

  # def parameter_missing(e)
  #   render json: { error: e.message }, status: :unprocessable_entity
  # end

  # def handle_unauthenticated
  #   head: :unauthorized
  # end

  # authenticates a user's login credentials and returns the specific user hash and unique JWT token
  def login 
    @user = User.find_by(username: user_login_params[:username])
    if @user && @user.authenticate(user_login_params[:password])
      # encode_token method from application controller
      token = encode_token({ user_id: @user.id })
      render json: {
        user: UserSerializer.new(@user),
        jwt: token
      }, status: :accepted
    else
      render json: { error: "Invalid username or password" }, status: :unauthorized
    end
  end

  private

  def user_login_params
    params.require(:user).permit(:username, :password)
  end
end