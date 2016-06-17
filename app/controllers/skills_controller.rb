class SkillsController < ApplicationController
  def index
  end

  def create

    s = Skill.new(skills_params)
    s.user_id = current_user.id
    if s.save
      flash[:success] = "Nice"
      redirect_to current_user
    else
      flash[:errors] =" no bueno"
      redirect_to :back
    end

  end

  def update
  end

  def destroy
  end

  def edit
  end
  private
  def skills_params
    params.require(:skill).permit(:field, :title, :yoe, :idnum, :description ,:user_id)
  end
end
