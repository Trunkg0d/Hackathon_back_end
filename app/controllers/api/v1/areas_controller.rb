class Api::V1::AreasController < ApplicationController
  before_action :set_tree_count
  
  def index
  end

  def show
  end

  def create
  end

  def update
  end

  def destroy
  end

  private

  def area_params
    params.require(:area).permit(:org_name, :address, :width, :length,
      :x, :y, :limit, :image, :land_ids, :tree_type_ids)
  end

  def set_tree_count
    @area = Area.find(params[:id])
    tree_count = 0
    @area.lands.each do |land|
      tree_count += land.tree_count
    end

    @area.update_attribute(:tree_count, tree_count)
  end
end
