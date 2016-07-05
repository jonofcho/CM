class AddProjectIdToProjectUser < ActiveRecord::Migration
  def change
    add_column :project_users, :project_id, :integer
  end
end
