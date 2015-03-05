class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :streaks, :integer, default: 0 # same for `streaks` 
  end
end
