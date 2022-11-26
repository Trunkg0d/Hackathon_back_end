class Api::V1::LandsController < ApplicationController
  before_action :set_tree_count
  
  def index 
    @lands = Land.all
    if @lands
      render json: {
        messages: "Show all lands",
        data: @lands
      }, status: :ok
    else 
      render json: {
        messages: "Can't show all lands",
      }, status: :unprocessable_entity
    end
  end

  def show
    @land = Land.find_by(id: params[:id])
    if @land
      render json: {
        messages: "Show land #{@land.id}",
        data: @land
      }, status: :ok
    else 
      render json: {
        messages: "Can't show land",
      }, status: :unprocessable_entity
    end
  end

  def create
  end

  def updated
  end

  def destroy
  end

  def area_lands
    @area = Area.find_by(id: params[:id])
    array = []
    
    @area.lands.each do |land|
      array << land
    end

    render json: {
      Lands: array
    }, status: :ok
  end

  private

  def land_params
    params.require(:land).permit(:landimg, :area_id, :limit)
  end

  def set_tree_count
    @land = Land.find_by(id: params[:id])
    tree_count = @land.trees.count
    @land.update_attribute(:tree_count, tree_count)
  end
end
