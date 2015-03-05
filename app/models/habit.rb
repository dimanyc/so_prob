class Habit < ActiveRecord::Base
  belongs_to :user
  has_many :levels
  has_many :days, through: :levels

  accepts_nested_attributes_for :levels, :days


  def evaluate(user)
      
    levels.each do |level| 

      if level.days.where(missed:true).count == 3
        level.passed = true
        level.save
        user.missed_levels << level.id 
        user.save

        level.days.each do |day|
          unless day.missed == true 
            user.missed_days << day.id 
            user.save
          end

        end
      end 

    end
#    if levels.days.where(missed:true).count == 3 
    #if days.where(missed: true).count == 3 


  end
  


  def evaluate_missed(days,user)
    strikes = days / 3 
    user.update_attributes(strikes: strikes)
  end



    
end
