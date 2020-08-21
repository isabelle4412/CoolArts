module Owner
  class BookingsController < ApplicationController
    def index
      # @bookings = Booking.all
      # @bookings_owner = @bookings.map do |booking|
      #   if booking.painting.user.first_name == current_user.first_name
      #     booking.painting
      #   end

      @bookings = Booking.all
      @bookings_owner = []
      @bookings.map do |booking|
        if booking.painting.user.first_name == current_user.first_name
          @bookings_owner << booking.painting
        end
      end
    end
  end
end
