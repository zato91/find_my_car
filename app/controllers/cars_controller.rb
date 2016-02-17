class CarsController < ApplicationController
  before_action :set_cars, only: [:show, :edit, :update, :destroy]

  def index
    if params[:address] == nil
      @cars = Car.all
    else
      @cars = Car.select{|c| c.address.downcase == params[:address].downcase}
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
      redirect_to user_path(current_user)
    else
      render :new
    end
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
    params.require(:car).permit(:model, :address, :brand, :price, :photo)
  end
end
