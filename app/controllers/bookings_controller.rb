class BookingsController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:index, :new]

  def index
    @bookings = current_user.bookings.order(created_at: :desc)
    # @paintings = Painting.all
    # # @paintsing = Painting.find(params[:painting_id])
    # @bookings.painting = cl_image_path painting.photo.key
  end

  def new
    @bookings = Booking.new
  end

  def create
    @booking      = Booking.new(booking_params)
    @booking.user = User.where(first_name: current_user.first_name).first
    @booking.state = "En cours"

    @painting         = Painting.find(params[:booking][:painting_id])
    @booking.painting = @painting

    @booking.total_price = (@booking.ends_on.to_date - @booking.starts_on.to_date).to_i * @booking.painting.price_per_day

    if @booking.save!
      redirect_to bookings_path, notice: 'La demande de réservation a bien été envoyé'
    else
      render "paintings/show"
    end
  end

  def accept
    @booking = Booking.find(params[:id])
    @booking.state = "Acceptée"
    @booking.save
    redirect_to owner_bookings_path
  end

  def decline
    @booking = Booking.find(params[:id])
    @booking.state = "Refusée"
    @booking.save
    redirect_to owner_bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:starts_on, :ends_on)
  end
end
