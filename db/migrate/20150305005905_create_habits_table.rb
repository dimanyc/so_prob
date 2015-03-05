class CreateHabitsTable < ActiveRecord::Migration
  def change
    create_table :habits do |t|
      t.string :name
      t.integer :user_id
    end
  end
end
