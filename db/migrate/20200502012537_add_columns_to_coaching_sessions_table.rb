class AddColumnsToCoachingSessionsTable < ActiveRecord::Migration[5.2]
  def change
    add_column :coaching_sessions, :training_date, :date, null: false
    add_column :coaching_sessions, :training_time, :time, null: false
    add_column :coaching_sessions, :training_duration, :integer, null: false
    add_column :coaching_sessions, :training_description, :text, null: false
    remove_column :coach_details, :frequency
  end
end

