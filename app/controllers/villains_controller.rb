class VillainsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @search = params["search"]
    @booking_address = @search['booking_address']

    if @booking_address != ""
      # On considere une recherche a 200km
      @villains = Villain.near(@booking_address, 200)
      # @villains = Villain.where("name ILIKE ?", "%#{@search['booking_address']}%")
    else
      @villains = Villain.all
    end
  end

  def show
    @villain = Villain.find(params[:id])
    @booking = Booking.new
    @markers = [{
      lat: @villain.latitude,
      lng: @villain.longitude
    }]
    @reviews = @villain.reviews

    # @booking = Booking.find(params[:id])
    # @user = User.find(params[:id])
    # @name = @booking.user.first_name
  end

  def new
    @villain = Villain.new
  end

  def create
    @villain = Villain.new(villain_params)
    @villain.user = current_user
    @villain.user.is_villain = true
    @villain.user.save
    if @villain.save
      redirect_to villain_path(@villain)
    else
      render :new
    end
  end

  private

  def villain_params
    params.require(:villain).permit(:name, :address, :description, :nastiness, :daily_price, :user_id, :photo, :poster)
  end
end
