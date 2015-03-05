class CreateLevelsTable < ActiveRecord::Migration
  def change
    create_table :levels do |t|
      t.integer :user_id
      t.integer :habit_id
      t.boolean :passed, default: false 
    end
  end
end
