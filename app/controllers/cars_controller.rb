class CarsController < ApplicationController
  
  def index  
    if params[:query].present?
      @cars = Car.search_by_manufacturer_model_and_address(params[:query])
    else
      @cars = Car.all
    end
  end

  def show
    @car = Car.find(params[:id])
  end

  def new
    @car = Car.new
  end

  def create 
    @car = Car.new(car_params)
    @car.user = current_user
    if @car.save
      redirect_to car_path(@car)
    else
      render :new
    end
  end

  private

  def car_params
    params.require(:car).permit(:model, :manufacturer, :description, :price, :address, photos: [])
  end
end
