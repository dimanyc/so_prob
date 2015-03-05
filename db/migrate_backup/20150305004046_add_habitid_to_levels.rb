class AddHabitidToLevels < ActiveRecord::Migration
  def change
    add_column :levels, :habit_id, :integer
  end
end
