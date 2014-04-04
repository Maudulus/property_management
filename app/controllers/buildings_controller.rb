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
    @building.destroy
    respond_to do |format|
      format.html { redirect_to buildings_url }
    end
  end

  protected
  def set_building
      @building = Building.find(params[:id])
  end

  def building_params
    params.require(:building).permit(:address, :city, :state, :zip, :description, :owner_id)
  end
end
