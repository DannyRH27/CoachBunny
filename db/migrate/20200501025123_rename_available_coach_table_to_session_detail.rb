class RenameAvailableCoachTableToSessionDetail < ActiveRecord::Migration[5.2]
  def change
    rename_table :available_coaches, :session_details
  end
end
