class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :pass_digest, null: false
      t.string :session_token, null: false
      t.string :email_address, null: false
      t.string :image_url
      t.integer :zip_code, null: false
      t.string :phone_number
      t.timestamps
      
    end

    add_index :users, :session_token, unique: true
    add_index :users, :email_address, unique: true
    add_index :users, :phone_number, unique: true

  end
end
