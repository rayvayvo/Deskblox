class DashboardController < ApplicationController


  def index
    if current_user
      redirect_to "/blocks"
    end
  end

end
