class UsersController < ApplicationController
  before_action :set_users, only: [:show, :edit, :update]

  def index
  end

  def show
    @cars = @user.cars.reverse
    @rents = current_user.rents.reverse
    @rents_on_my_cars = Rent.where(car: current_user.cars.first)
    #.where.not(status: "declined")
    # @rent = Rent.find(params[:car_id])
    # @price = @rent.total_price
  end

  def edit
  end

  def update
  end



  private

  def set_users
    @user = User.find(params[:id])
  end
end
