class AddNumberOfSeatsToTravellers < ActiveRecord::Migration[7.0]
  def change
    add_column :travellers, :number_of_seats, :integer
  end
end
