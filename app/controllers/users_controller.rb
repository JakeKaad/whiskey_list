class UsersController < ApplicationController
  before_action :logged_in_user,    only: [:index, :edit, :update, :destroy]
  before_action :correct_user,      only: [:edit, :update]
  before_action :admin_user,        only: [:destroy]
    
  def destroy
    User.find
  end

  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def delete
  end

  def update
  end
  
  private
    
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
    
    #confirms logged in user
    def logged_in_user
      unless logged_in?
      store_location
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
    
    #confirms correct user
    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end
    
    #confirms an admin user.
    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end
    
end
