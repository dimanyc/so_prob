class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :missed_days, :text
    add_column :users, :missed_levels, :text
  end
end
