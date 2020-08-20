class BookingsController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:index, :new]

  def index
    @bookings = current_user.bookings
    # @paintings = Painting.all
    # # @paintsing = Painting.find(params[:painting_id])
    # @bookings.painting = cl_image_path painting.photo.key
  end

  def new
    @bookings = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
  end

  private

  def booking_params
     params.require(:booking).permit(:starts_on, :ends_on, :state, :total_price)
  end
end
