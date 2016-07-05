class CreateProjectUsers < ActiveRecord::Migration
  def change
    create_table :project_users do |t|

      t.timestamps null: false
    end
  end
end
