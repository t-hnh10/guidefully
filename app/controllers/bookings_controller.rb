class BookingsController < ApplicationController
    def new
        @booking = Booking.new
    end

    def create
        @booking = Booking.create_booking(params[:booking][:date], params[:booking][:guide_id], current_user.id)
        logger.info current_user.inspect
        redirect_to bookings_path
    end

    def index
        @bookings = current_user.bookings
    end

end
