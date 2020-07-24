class AddColumnCoachingRateToSessionDetail < ActiveRecord::Migration[5.2]
  def change
    add_column :session_details, :coaching_rate, :integer
    add_index :session_details, :coaching_rate
  end
end
