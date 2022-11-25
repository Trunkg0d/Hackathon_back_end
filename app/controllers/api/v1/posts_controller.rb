class Api::V1::PostsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :update, :destroy]
  before_action :check_owner, only: [:destroy]

  def show
    @post = Post.find_by(id: params[:id])
    if @post
      render json: {
        messages: "Show post successful",
        data: @post
      }, status: :ok
    else
      render json: {
        messages: "Show post failure"
      }, status: :no_content
    end
  end

  def index
    @posts = Post.all
    if @posts
      render json: {
        messages: "Show posts successful",
        data: @posts
      }, status: :ok
    else
      render json: {
        messages: "Show posts failure",
      }, status: :no_content
    end
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      render json: {
        messages: "Create post successful",
        data: @post
      }, status: :created
    else
      render json: {
        messages: "Create post failure",
      }, status: :unprocessable_entity
    end
  end

  def update
    @post  = Post.find(params[:id])
    if @post.update(post_params)
      render json: {
        messages: "Update post successful",
        data: @post
      }, status: :ok
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    head 204
  end

  private

  def post_params
    params.require(:post).permit(:status, :title, :content, :like, :image, :user_id)
  end

  def check_owner
    head :forbidden unless @post.user_id == current_user.id
  end
end
