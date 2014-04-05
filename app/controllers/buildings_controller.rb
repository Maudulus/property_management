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

  def index
    @buildings = Building.all
  end

  def destroy
    @building = Building.find(params[:id])
    @building.delete
    redirect_to buildings_path
  end

  def show

  end

  protected
  def set_building
      @building = Building.find(params[:id])
  end

  def building_params
    params.require(:building).permit(:address, :city, :state, :zip, :description, :owner_id)
  end
end
