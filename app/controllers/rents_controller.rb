class RentsController < ApplicationController
  def new
  end

  def create
  	@car = Car.find(params[:car_id])
  	@rent = @car.rents.new(rent_params)
  	if @rent.save
  		redirect_to user_path(id: current_user.id, tab: 'myrents')
  	else
  		redirect_to car_path(@car)
  	end
  end

  private
 
	def rent_params
		params.require(:rent).permit(:status, :user_id)
	end
end
