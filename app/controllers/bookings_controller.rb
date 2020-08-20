class BookingsController < ApplicationController
  def index
  end

  def create
    @booking      = Booking.new(booking_params)
    @booking.user = User.where(first_name: current_user.first_name).first
    @booking.state = "pending"

    @painting         = Painting.find(params[:booking][:painting_id])
    @booking.painting = @painting

    @booking.total_price = (@booking.ends_on - @booking.starts_on) * @booking.painting.price_per_day

    if @booking.save!
      redirect_to @painting, notice: 'La réservation a bien été envoyé'
    else

      render "paintings/show"
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:starts_on, :ends_on)
  end
end
