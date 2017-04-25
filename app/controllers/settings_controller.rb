class SettingsController < ApplicationController

  def index
      if !current_user
      redirect_to "/"
    end
  end

  def update

  end

end
