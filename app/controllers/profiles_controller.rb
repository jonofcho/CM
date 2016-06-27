class ProfilesController < ApplicationController
  def index
  end

  def show
    @user=current_user
    @skill = Skill.where(:user_id => @user.id)
    @skills = @skill.paginate(:page => params[:page], :per_page => 1)
  end

  def create
  end

  def update
  end

  def destroy
  end

  def edit

  end
end
