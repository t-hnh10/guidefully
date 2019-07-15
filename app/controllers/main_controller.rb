class MainController < ApplicationController
  def index
    @guides = Guide.all.order(:country)
  end
end
