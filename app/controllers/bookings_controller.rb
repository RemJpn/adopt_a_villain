class BookingsController < ApplicationController
   before_action :set_booking, only: [:show]

  def index
    @bookings = Booking.where(user_id: current_user)
  end

  def show
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
