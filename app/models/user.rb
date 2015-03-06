class User < ActiveRecord::Base
  has_many :habits
  has_many :levels
  has_many :days 

  serialize :missed_days, Array
  serialize :missed_levels, Array

end