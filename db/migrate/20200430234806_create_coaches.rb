class CreateCoaches < ActiveRecord::Migration[5.2]
  def change
    create_table :coaches do |t|
      t.string :first_name, null: false  
      t.string :last_name, null: false 
      t.string :image_url, null: false
      t.string :zip_code, null: false
      t.text :coach_description, null: false
      t.timestamps
    end
  end
end
