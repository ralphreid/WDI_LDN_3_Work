class UsersController < ApplicationController
  
  load_and_authorize_resource 

  def index
    
  end

  def new
    # @user = User.new
  end

  def create
    @user = User.new params[:user]
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_url, notice: "thank you for signing up"
    else
      render :new
    end
  end

  def admin
    @users = User.where(role: 'admin').all
    render :index
  end

end