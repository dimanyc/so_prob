class HabitsController < ApplicationController
  before_action :set_user
  
  def index
    @habits = Habit.all
  end

  def new
    @habit = @user.habits.new
    @level = @habit.levels.new
    3.times { @level.days.build }
  end

  def create
    @habit = @user.habits.new(habit_params)
    @levels = @habit.levels

    if @habit.save
      @habit.evaluate(@user)
      redirect_to habits_path
    else
      render :new 
    end
  end


  private

  def habit_params
    params.require(:habit).permit(:user_id, levels_attributes:[:passed, days_attributes:[:missed,:level_id]])
  end

  def set_user
    @user = User.find(1) # use params or whatever
  end

end
