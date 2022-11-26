class Api::V1::UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show, :index]
  before_action :check_owner, only: [:update, :destroy]

  def show
    @user = User.find_by(id: params[:id])
    if @user
      render json: {
        data: @user
      }, status: :ok
    else
      render json: {
        messages: "Can not show user"
      }, status: :not_found
    end
  end

  def index
    @users = User.all
    if @users
      render json: {
        data: @users
      }, status: :ok
    else
      render json: {
        messages: "Can not show user"
      }, status: :not_found
    end
  end

  def update
    @user = User.find_by(id: params[:id])
    if @user.update(user_params)
      render json: {
        messages: "User updated successfully",
        data: @user
      }, status: :ok
    else
      render json: {
        messages: "Can not update user",
        data: @user.errors
      }, status: :unprocessable_entity
    end
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:name, :avatar, :email, :phone)
  end

  def check_owner
    @user = User.find_by(id: params[:id])
    head :forbidden unless @user.id == current_user.id
  end
end
