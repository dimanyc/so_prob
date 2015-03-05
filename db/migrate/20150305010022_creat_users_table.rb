class CreatUsersTable < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :strikes
      t.integer  :level

    end    
  end
end
