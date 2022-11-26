class Api::V1::UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show, :index, :update, :destroy]
  before_action :check_owner, only: [:update, :destroy]
  before_action :set_tree_count

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
    @user = User.find(params[:id])
    if @user
      @user.destroy
      render json: {
        messages: "User deleted successfully"
      }, status: :ok
      head 204
    end 
  end

  private

  def user_params
    params.require(:user).permit(:name, :avatar, :email, :phone)
  end

  def check_owner
    @user = User.find_by(id: params[:id])
    if @user.id == current_user.id
      return true
    else
      head :forbidden
    end
  end

  def set_tree_count
    @user = User.find_by(id: params[:id])
    tree_count = 0
    tree_count = @user.trees.count
    @user.update_attribute(:tree_count, tree_count)
  end

end
