class Habit < ActiveRecord::Base
  belongs_to :user
  has_many :levels
  has_many :days, through: :levels

  accepts_nested_attributes_for :levels, :days


  def evaluate(user)
    
    levels.each { |level| level.evaluate }
    user.missed_levels << levels.where(passed: false).ids 
    user.missed_days << days.where(missed: true).ids 
    user.save

  end

    
end
