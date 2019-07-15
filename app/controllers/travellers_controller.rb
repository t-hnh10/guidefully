class TravellersController < ApplicationController
    def index
        @bookings = current_user.bookings.order(:id)
    end

    def show
        @traveller = Traveller.new(params[:id])
    end
    
    def new
        @traveller = Traveller.new
    end

    def create
        @traveller = Traveller.create_traveller(params[:traveller][:name], params[:traveller][:phone_number])
        redirect_to main_index_path
    end

end
