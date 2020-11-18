class BookingsController < ApplicationController

  before_action :set_booking, only: [:show]

  def index
    @bookings = Booking.where(user_id: current_user)
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.villain_id = params['villain_id']
    @booking.user = current_user
    duration = @booking.end_date - @booking.start_date
    @booking.total_price = duration * @booking.villain.daily_price

    if @booking.save
      redirect_to booking_path(@booking)
    else
      render 'villains/show'
    end
  end

  def show
  end

  private

  def set_booking
   @booking = Booking.find(params[:id])
  end

  def booking_params
   params.require(:booking).permit(:start_date, :end_date, :address, :post_code, :city)
  end
end
