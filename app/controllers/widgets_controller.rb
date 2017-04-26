class WidgetsController < ApplicationController

  def update
      if @widget.update(user_params)
        redirect_to "/blocks"
      end
  end

end
