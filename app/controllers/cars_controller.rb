class CarsController < ApplicationController
  before_action :set_cars, only: [:show, :edit, :update, :destroy]

  def index
  	@cars = Car.all
  end

  def show
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    @car.save
    redirect_to user_path(current_user)
  end

  def edit
  end

  def update
    @car.update(car_params)
    redirect_to car_path(@car)
  end

  def destroy
    @car.destroy
    redirect_to cars_path
  end

 private

 def set_cars
   @car = Car.find(params[:id])
 end

  def car_params
    params.require(:car).permit(:name, :address, :category, :found_on)
  end
end
