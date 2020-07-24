class CreateAvailableCoaches < ActiveRecord::Migration[5.2]
  def change
    create_table :available_coaches do |t|
      t.integer :coach_id, null: false
      t.integer :sport_id, null: false
      t.integer :duration, null: false
      t.integer :frequency, null: false
      t.boolean :elite_coach, null: false, default: false
      t.boolean :equipment, null: false, default: false
      t.timestamps
    end
    add_index :available_coaches, :coach_id
    add_index :available_coaches, :sport_id
    add_index :available_coaches, :duration
    add_index :available_coaches, :frequency
    add_index :available_coaches, :elite_coach
    add_index :available_coaches, [:coach_id, :sport_id], unique: true
  end
end
