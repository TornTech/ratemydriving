class CarsController < ApplicationController
  def index
    @text = "Vehicle list:"
    @cars = Car.all
  end

  def new
    @car = Car.new 
  end

  def create
    @car = Car.new(car_params)

    if @car.save
      # flash[:notice] = "#{@car.title} has been successfully submitted."
      redirect_to admin_path
    else
      # flash.now[:alert] = "Please make sure all fields are filled in correctly :)"
      render "new"
    end
  end

  def edit
    @car = Car.find(params[:id])
  end

  def update
    @car = Car.find(params[:id])
    @car.assign_attributes(car_params)

    if @car.save
      # flash[:notice] = "#{@car.title} has been successfully submitted."
      redirect_to admin_path
    else
      # flash.now[:alert] = "Please make sure all fields are filled in correctly :)"
      render "edit"
    end
  end

  def destroy
    car = Car.find(params[:id]).destroy
    # flash[:notice] = "#{auction.title} has been deleted."
    redirect_to admin_path
  end

  def show
    @car = Car.find(params[:id])
  end

  private 

  def car_params
    params.require(:car).permit(
      :company_id,
      :code,
      :make,
      :model,
      :color,
      :license_plate,
      :created_at,
      :updated_at
    )
  end
end