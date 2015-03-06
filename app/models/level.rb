class Level < ActiveRecord::Base
  belongs_to :habit
  belongs_to :user
  has_many :days

  accepts_nested_attributes_for :days

  def evaluate
    if days.where(missed: true ).count == 3
      update_attributes(passed: false)
    else
      update_attributes(passed: true)
    end
  end

end
