class CreateDays < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.string :name
      t.boolean :missed
      t.integer :habit_id

      t.timestamps
    end
  end
end
