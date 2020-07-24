class AddDescriptionToCoachDetail < ActiveRecord::Migration[5.2]
  def change
    add_column :coach_details, :session_description, :text
  end
end
