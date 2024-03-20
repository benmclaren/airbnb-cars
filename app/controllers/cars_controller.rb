class CarsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
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
    @booking = Booking.new
  end

  def new
    # options for dropdown
    @manufacturer_select = Car.manufacturer_select
    @layout_select = Car.layout_select
    @body_select = Car.body_select
    @transmission_select = Car.transmission_select
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
    params.require(:car).permit(:model, :manufacturer, :description, :price, :address, :layout, :power, :transmission, :body_style, :engine, :year, photos: [])
  end
end
