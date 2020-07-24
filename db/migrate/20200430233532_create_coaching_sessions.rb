class CreateCoachingSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :coaching_sessions do |t|
      t.integer :sport_id, null: false
      t.integer :coach_id, null: false
      t.integer :user_id, null: false
      t.timestamps
    end
    add_index :coaching_sessions, :sport_id
    add_index :coaching_sessions, :coach_id
    add_index :coaching_sessions, :user_id
  end
end
