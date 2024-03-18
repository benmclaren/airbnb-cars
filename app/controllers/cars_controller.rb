class CarsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  
  def index  
    if params[:query].present?
      @cars = Car.search_by_manufacturer_model_and_address(params[:query])
    else
      @cars = Car.all
    end
  end

  def show
    @car = Car.find(params[:id])
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

  private

  def car_params
    params.require(:car).permit(:model, :manufacturer, :description, :price, :address, :layout, :power, :transmission, :body_style, :engine, :year, photos: [])
  end
end
