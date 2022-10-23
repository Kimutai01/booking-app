class AddBookedToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :booked, :boolean , default: false
  end
end
