class SessionsController < ApplicationController
  def index

  end

  def register

  end

  def create
    u = User.new(users_params)
    if u.save
      flash[:success] = "Congratulations! You have registered successfully!"
      redirect_to :root
    else
      flash[:errors] = u.errors.full_messages
      redirect_to :back
    end
  end

  def new
    u = User.find_by_email(params[:email])
    if u && u.authenticate(params[:password])
      session[:user_id] = u.id
      redirect_to u
    else
      flash[:errors] = "Incorrect Combination"
      redirect_to :back
    end
  end

  def destroy
    reset_session
    redirect_to :root
  end

  def launch

  end

  private
  def users_params
    params.require(:user).permit(:first_name,:last_name, :email, :dob, :password, :password_confirmation)
  end
end
