class BookingsController < ApplicationController
  def index
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = User.where(first_name: current_user.first_name).first

    if @booking.save
      redirect_to @painting, notice: 'La réservation a bien été envoyé'
    else
      render :show
    end
  end

  private

  def painting_params
    params.require(:booking).permit(:starts_on, :ends_on)
  end
end
