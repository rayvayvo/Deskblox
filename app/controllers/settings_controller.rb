class SettingsController < ApplicationController

before_action :set_setting

  def index
      if !current_user
      redirect_to "/"
    end
  end

  def update
      @setting.update(
        widget1_id: "#{params[:setting]['widget1_id']}",
        widget2_id: "#{params[:setting]['widget2_id']}",
        widget3_id: "#{params[:setting]['widget3_id']}",
        widget4_id: "#{params[:setting]['widget4_id']}",
        layout_id: "#{params[:setting]['layout_id']}"


      )
        redirect_to "/blocks"
  end

  def new
  end

  def create
  end

private
    def set_setting
      @setting = Setting.where("user_id ==?", current_user.id)
    end

end
