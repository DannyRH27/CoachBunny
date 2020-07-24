class AddColumnSessionIdToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :coaching_session_id, :integer 
    add_index :reviews, :coaching_session_id
    add_index :reviews, [:user_id, :coaching_session_id], unique: true
  end
end
