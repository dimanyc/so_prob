class AddDaysToHabits < ActiveRecord::Migration
  def change
    add_column :habits, :days_count, :integer, default: 5
  end
end
