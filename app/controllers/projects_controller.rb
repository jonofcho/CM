class ProjectsController < ApplicationController
  def index
  end

  def show
    @user = current_user
    @project = Project.where(:admin_id => @user.id)
  end

  def create
    project = Project.new(projects_params)
    project.admin_id = current_user.id
    project.active = true
    project.save
    redirect_to project
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def join
    group = projects_users.new(add_user_to_project)
    group.user_id = current_user.id
    group.save
    redirect_to :back
  end
  private
  def add_user_to_project
    params.require(:project).permit(:id)
  end
  def projects_params
    params.require(:project).permit(:name,:description,:admin_id,:active)
  end
end
