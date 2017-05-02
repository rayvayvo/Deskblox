class UserWidgetSettingsController < ApplicationController

before_action :set_widget_setting

  def index
      if !current_user
      redirect_to "/"
    end
  end

  def update
      @widget_setting.update(
        youtube_url: "#{params[:user_widget_setting]['youtube_url']}",
        twitter_username: "#{params[:user_widget_setting]['twitter_username']}",
        twitter_password: "#{params[:user_widget_setting]['twitter_password']}",
      )
        redirect_to "/blocks"
  end

  def new
  end

  def create
  end

private
    def set_widget_setting
      @widget_setting = UserWidgetSetting.where("user_id ==?", current_user.id)
    end

end

