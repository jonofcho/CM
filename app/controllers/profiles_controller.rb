class ProfilesController < ApplicationController
  def index
  end

  def show
    @user=current_user
    @skill = Skill.where(:user_id => @user.id)
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
