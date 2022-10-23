class AddNameToBuses < ActiveRecord::Migration[7.0]
  def change
    add_column :buses, :name, :string
  end
end
