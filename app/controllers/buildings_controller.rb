class BuildingsController < ApplicationController

  def new
    @building = Building.new
  end

  def create
    @building = Building.create(building_params)
    if @building.save
      redirect_to new_building_path, notice: 'Building Successfully Added'
    else
      redirect_to new_building_path, notice: 'Error: Building Not Added'
    end
  end

  protected

  def building_params
    params.require(:building).permit(:address, :city, :state, :zip,:description)
  end
end
