class Api::V1::AreasController < ApplicationController
  before_action :set_tree_count, only: [:show]
  
  def index
    @areas = Area.all 
    if @areas
      render json: {
        messages: "Show all areas",
        data: @areas
      }, status: :ok
    else  
      render json: {
        messages: "Can't show"
      }, status: :unprocessable_entity
    end
  end

  def show
    @area = Area.find_by(id: params[:id])
    if @area
      render json: {
        messages: "Show area #{@area.id}",
        data: @area
      }, status: :ok
    else 
      render json: {
        messages: "Can't show area",
      }, status: :unprocessable_entity
    end
  end

  def create
  end

  def update
  end

  def destroy
  end

  def area_lands
    @area = Area.find_by(id: params[:id])
    if @area
      @trees = @area.trees
      render json: {
        data: @trees
      }, status: :ok
    end
  end

  private

  def area_params
    params.require(:area).permit(:org_name, :address, :width, :length, :x, :y, :limit, :areaimg, :land_ids, :tree_type_ids)
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
