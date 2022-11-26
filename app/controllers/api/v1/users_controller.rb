class Api::V1::UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show, :index]

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
end
