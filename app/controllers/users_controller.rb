class UsersController < ApplicationController
  before_action :set_users, only: [:show, :edit, :update]

  def index
  end

  def show
    @rents = current_user.rents
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
