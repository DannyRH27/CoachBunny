class RenameSessionDetailsTableToCoachDetails < ActiveRecord::Migration[5.2]
  def change
    rename_table :session_details, :coach_details
  end
end
