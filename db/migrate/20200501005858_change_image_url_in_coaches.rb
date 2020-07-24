class ChangeImageUrlInCoaches < ActiveRecord::Migration[5.2]
  def change
    change_column :coaches, :image_url, :string, null: true
  end
end
