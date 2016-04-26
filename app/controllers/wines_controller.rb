class WinesController < ApplicationController

  def index
    @user = User.find(params[:user_id])
    @wines = Wine.where("user_id = ?", params[:user_id])
  end

  def show

  end

  def new
    @user = User.find(params[:user_id])
    @wine = Wine.new
  end

  def create
    @user = User.find(params[:user_id])
    @wine = @user.wines.create!(wine_params)
    redirect_to user_wines_path(@user)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def wine_params
    params.require(:wine).permit(:name, :year, :email, :description, :wine_url)
  end
end
