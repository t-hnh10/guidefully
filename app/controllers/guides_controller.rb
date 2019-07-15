class GuidesController < ApplicationController
    def index
        @bookings = current_user.bookings.order(:id)
    end
    
    def show
        @guide = Guide.new(params[:id])
    end

    def new
        @guide = Guide.new
    end

    def create
        @guide = Guide.create_guide(params[:guide][:name], params[:guide][:phone_number], params[:guide][:city], params[:guide][:country], params[:guide][:cost])
        redirect_to main_index_path
    end
end
