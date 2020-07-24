class CreateSports < ActiveRecord::Migration[5.2]
  def change
    create_table :sports do |t|
      t.string :sport, null: false
      t.timestamps
    end
    add_index :sports, :sport
  end
end
