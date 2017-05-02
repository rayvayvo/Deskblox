class UsersController < ApplicationController

  include UsersHelper

  before_action :set_user, only: [:show, :edit, :update, :destroy]
  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    if params[:user][:password].length > 5
      if params[:user][:password] == params[:user][:password_confirmation]
        if User.where("email == ?", params[:user][:email]).first
          flash[:error] = "Email already in use"
          redirect_to "/"
        else
          user = User.new(user_params)
          if user.save
            session[:user_id] = user.id
            redirect_to '/blocks'
          end
        end
      else
          flash[:error] = "Passwords do not match"
          redirect_to "/"
      end
    else
      flash[:error] = "Password is too short"
      redirect_to "/"
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
      if @user.update(user_params)
        redirect_to "/blocks"
      end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation, :theme_id)
    end
end
