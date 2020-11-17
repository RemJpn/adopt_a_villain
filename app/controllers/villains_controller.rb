class VillainsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @villains = Villain.all
  end

  def show
    @villain = Villain.find(params[:id])
  end

  def new
    @villain = Villain.new
  end

  def create
    @villain = Villain.new(villain_params)
    @villain.user = current_user
    if @villain.save
      redirect_to 'show'
    else
      render :new
    end
  end

  private

  def villain_params
    params.require(:villain).permit(:name, :description, :nastiness, :daily_price, :user_id)
  end
end