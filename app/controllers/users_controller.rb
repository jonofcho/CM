class UsersController < ApplicationController
  def show
    @user = current_user
  end

  def create

  end
end
