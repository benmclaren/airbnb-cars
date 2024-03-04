class UsersController < ApplicationController
  def show
    @user = current_user
    # @car = Car.find(params[:id])
    @cars = Car.where(user: @user)
  end
end
