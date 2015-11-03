class UsersController < ApplicationController

def index
  @users = User.all
end

def new
  @user = User.new
end

def create
  @user = User.new(user_params)
    if @user.save
      flash[:notice] = "You have successfully signed up!"
      session[:user_id] = @user.id # login
      redirect_to user_path(@user)
    else
      render :new
    end
end

def show

end

private

   def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  def authenticate
    redirect_to new_session_path, alert: 'You must be logged in to continue!' if current_user.nil?
  end

  def authorize
    @user = User.find(params[:id])
    redirect_to root_path if @user != current_user
  end
end

