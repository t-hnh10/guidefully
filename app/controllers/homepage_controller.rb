class HomepageController < ApplicationController
  def index
    if user_signed_in?
      return redirect_to main_index_path
    end
  end
end