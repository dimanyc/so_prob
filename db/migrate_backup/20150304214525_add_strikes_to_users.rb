class AddStrikesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :strikes, :integer
  end
end
