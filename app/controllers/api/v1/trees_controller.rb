class Api::V1::TreesController < ApplicationController
  def index
    @trees = Tree.all
    if @trees
      render json: {
        messages: "Show trees",
        data: @trees
      }, status: :ok
    else
      render json: {
        messages: "Can not show trees"
      }, status: :unprocessable_entity
    end
  end

  def show
    @tree = Tree.find_by(id: params[:id])
    if @tree
      render json: {
        messages: "Show tree",
        data: @tree
      }, status: :ok
    else
      render json: {
        messages: "Can not show tree"
      }, status: :unprocessable_entity
    end
  end

  def create
    @tree = current_user.trees.build(tree_params)
    if @tree.save
      render json: {
        messages: "Create tree successfully",
        data: {
          tree: @tree,
          user: @user
        }
      }, status: :created
    else 
        render json: {
          messages: "Create tree failed",
          errors: @tree.errors
        }, status: :unprocessable_entity
    end
  end

  def update
  end

  def destroy
  end

  def area_trees
    @area = Area.find_by(id: params[:id])
    array = []
    
    @area.lands.each do |land|
      array << land.trees
    end

    render json: {
      Trees: array
    }, status: :ok
  end

  private

  def tree_params
    params.require(:tree).permit(:user_id, :land_id, :tree_type_ids, :image)
  end
end
