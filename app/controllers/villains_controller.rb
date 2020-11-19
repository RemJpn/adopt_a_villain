class VillainsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @villains = Villain.all
    @search = params["search"]
    if @search.present?
      @villains = Villain.where("name ILIKE ?", "%#{@search['booking_address']}%")
    end
  end

  def show
    @villain = Villain.find(params[:id])
    @booking = Booking.new
  end

  def new
    @villain = Villain.new
  end

  def create
    @villain = Villain.new(villain_params)
    @villain.user = current_user
    if @villain.save
      redirect_to villain_path(@villain)
    else
      render :new
    end
  end

  private

  def villain_params
    params.require(:villain).permit(:name, :description, :nastiness, :daily_price, :user_id, :photo)
  end
end
