class UsersController < ApplicationController
  def show
    @user = current_user
    @cars = Car.where(user: @user)
  end
end
