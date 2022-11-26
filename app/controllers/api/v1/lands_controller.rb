class Api::V1::LandsController < ApplicationController
  def index 
  end

  def show
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
    params.require(:land).permit(:image, :area_id, :limit)
  end
end
