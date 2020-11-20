class BookingsController < ApplicationController

  before_action :set_booking, only: [:show]

  def index
    @bookings = Booking.where(user_id: current_user)
    @upcoming_bookings = @bookings.where('end_date >= ?', DateTime.now)
    @previous_bookings = @bookings.where('end_date < ?', DateTime.now)
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.villain_id = params['villain_id']
    @booking.user = current_user
    if @booking.end_date && @booking.start_date
      duration = @booking.end_date - @booking.start_date + 1
      @booking.total_price = duration * @booking.villain.daily_price
    end

    if @booking.save
      redirect_to booking_path(@booking)
    else
      @villain = Villain.find(params['villain_id'])
      render 'villains/show'
    end
  end

  def show
    @booking = Booking.find(params[:id])
    @villain = @booking.villain
    @markers = [{
      lat: @booking.latitude,
      lng: @booking.longitude
    }]
  end

  private

  def set_booking
   @booking = Booking.find(params[:id])
  end

  def booking_params
   params.require(:booking).permit(:start_date, :end_date, :address, :post_code, :city)
  end
end
