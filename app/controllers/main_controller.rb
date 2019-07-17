class MainController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @guides = Guide.all.order(:country)
  end
end
