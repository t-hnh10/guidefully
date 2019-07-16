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
        @bookings = current_user.bookings.order(:date)
    end

    def edit
        @booking = current_user.bookings.find(params[:id])
    end

    def update
        @booking = Booking.find(params[:id])
        booking_params = params.require(:booking).permit(:date)
        if @booking.update(booking_params)
            redirect_to bookings_path
        else
            render 'new'
        end
    end

    def show
        @booking = Booking.find(params[:id])
    end

    def destroy
        @booking = Booking.find(params[:id])
        @booking.destroy
        redirect_to bookings_path
    end
end
