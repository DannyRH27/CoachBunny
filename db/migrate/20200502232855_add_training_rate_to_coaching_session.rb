class AddTrainingRateToCoachingSession < ActiveRecord::Migration[5.2]
  def change
    add_column :coaching_sessions, :training_rate, :integer
  end
end
