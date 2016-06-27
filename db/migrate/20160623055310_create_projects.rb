class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.bigint :admin_id
      t.boolean :active
      t.string :description

      t.timestamps null: false
    end
  end
end
