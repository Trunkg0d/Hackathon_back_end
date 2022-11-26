class Api::V1::TreesController < ApplicationController
  def index
  end

  def show
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

  private

  def tree_params
    params.require(:trees).permit(:user_id, :land_id, :tree_type_id, :image)
  end
end
