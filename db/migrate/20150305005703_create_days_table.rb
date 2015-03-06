class CreateDaysTable < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.integer :level_id
      t.integer :habit_id 
      t.integer :user_id
      t.boolean :missed, default: false
    end
  end
end
