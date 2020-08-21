module Owner
  class BookingsController < ApplicationController
    def index
      @bookings = Booking.where(painting_id: current_user.paintings.pluck(:id)).order(created_at: :desc)

    end
  end
end



