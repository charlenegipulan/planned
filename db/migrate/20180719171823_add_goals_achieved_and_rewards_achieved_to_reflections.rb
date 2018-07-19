class AddGoalsAchievedAndRewardsAchievedToReflections < ActiveRecord::Migration[5.2]
  
  def change
    add_column :reflections, :goals_achieved, :text
    add_column :reflections, :rewards_achieved, :text

  end

  
end
