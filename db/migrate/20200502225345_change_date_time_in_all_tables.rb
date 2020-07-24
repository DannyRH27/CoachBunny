class ChangeDateTimeInAllTables < ActiveRecord::Migration[5.2]
  def change
    remove_column :coaching_sessions, :training_time
    change_column :coaching_sessions, :training_date, :datetime
  end
end
