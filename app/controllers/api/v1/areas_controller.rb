class Api::V1::AreasController < ApplicationController
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
end
