class OwnersController < ApplicationController

  def new
    @owner = Owner.new
  end

  def create
    @owner = Owner.create(owner_params)
    if @owner.save
      redirect_to new_owner_path, notice: 'Owner Successfully Added'
    else
      redirect_to new_owner_path, notice: 'Error: Owner Not Added'
    end
  end

  def index
    @owners = Owner.all
  end

  def destroy
    @owner = Owner.find(params[:id])
    @owner.delete
    redirect_to owners_path
  end

  protected

  def owner_params
    params.require(:owner).permit(:first_name, :last_name, :email, :company)
  end
end
