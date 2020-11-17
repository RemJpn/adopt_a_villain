class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @booking.villain_id = params['villain_id']
    @booking.user = current_user
    duration = @booking.end_date - @booking.start_date
    total_price = duration * @booking.villain.daily_price

    # # Geocoding (NOT TESTED!!!)
    # base_url = 'https://api.mapbox.com/geocoding/v5/mapbox.places/'
    # compiled_address = "#{@booking.address}, #{@booking.post_code} #{@booking.city}"
    # # NEED TO DEFINE TOKEN IN DOTENV
    # mapbox_api_url = "#{base_url}#{compiled_address}.json?access_token=#{TOKEN}"
    # api_answer = File.read(mapbox_api_url)
    # geocode = JSON.parse(api_answer)
    # @booking.longitude = geocode['features'][0]['geometry']['coordinates'][0]
    # @booking.latitude = geocode['features'][0]['geometry']['coordinates'][1]

    raise

    if @booking.save
      redirect_to bookins_path
    else
      render 'villains/show'
    end
  end

  def show
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :address, :post_code, :city)
  end
end
