class AddPhotoToBuses < ActiveRecord::Migration[7.0]
  def change
    add_column :buses, :photo, :string
  end
end
