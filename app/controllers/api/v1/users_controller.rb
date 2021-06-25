class Api::V1::UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  # check the token sent to us by the client
  # returns the user object that the token represents
  def current_user
    token = request.headers["Authentication"].split(" ")[1]
    payload = decode_token(token)
    user_id = payload["user_id"]
    @user = User.find(user_id)
    if @user
      render json: {
        user: UserSerializer.new(@user) }, status: :accepted
    else
      render json: { error: "User not found"}, status: :unprocessable_entity
    end
  end

  # GET /users
  def index
    @users = User.all

    render json: @users
  end

  # GET /users/1
  def show
    render json: @user
  end

  # POST /users
  def create
    @user = User.new(user_params)
    if @user.save
      render json: { user: UserSerializer.new(@user)}, status: :created
    else
      render json: @user.errors, status: :unprocessable_entity 
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.permit(:name, :username, :email, :password, :password_confirmation)
    end
end
