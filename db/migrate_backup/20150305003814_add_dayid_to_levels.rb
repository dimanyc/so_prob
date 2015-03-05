class AddDayidToLevels < ActiveRecord::Migration
  def change
    add_column :levels, :day_id, :integer
  end
end
