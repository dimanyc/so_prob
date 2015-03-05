class CreateHabits < ActiveRecord::Migration
  def change
    create_table :habits do |t|
      t.string :name
      t.integer :missed, default: 0 
      t.integer :level, defailt: 0
      t.integer :strikes, default: 0
      t.timestamps
    end
  end
end
