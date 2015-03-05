class ChangeUserLevelDefault < ActiveRecord::Migration
  def change
    change_column :users, :level, :integer, default: 0
  end
end
