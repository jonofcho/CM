class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :field
      t.string :title
      t.integer :yoe
      t.bigint :idnum
      t.string :description

      t.timestamps null: false
    end
  end
end
