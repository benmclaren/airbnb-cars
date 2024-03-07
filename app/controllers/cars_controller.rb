class CarsController < ApplicationController
  before_action :set_car, only: [:show, :edit, :update]

  def index  
    # for PG search
    if params[:query].present?
      @cars = Car.search_by_manufacturer_model_and_address(params[:query])
    else
      @cars = Car.all
    end
  end

  def show
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

  def edit
  end

  def update
    @car.update(car_params)
    if @car.save
      redirect_to car_path(@car)
    else
      render :edit
    end
  end

  private

  def set_car
    @car = Car.find(params[:id])
  end

  def car_params
    params.require(:car).permit(:model, :manufacturer, :description, :price, :address, photos: [])
  end
end
