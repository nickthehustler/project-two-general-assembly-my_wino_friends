class UsersController < ApplicationController

  def index
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.create!(user_params)
    redirect_to user_path(@user)
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
      @user = User.find(params[:id])
      @user.update_attributes(user_params)
      redirect_to user_path(@user)
  end

  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :city, :state, :country, :picture_url)
  end
end
