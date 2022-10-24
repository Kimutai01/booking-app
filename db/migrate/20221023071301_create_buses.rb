class CreateBuses < ActiveRecord::Migration[7.0]
  def change
    create_table :buses do |t|
      t.string :registration
      t.integer :capacity
      t.string :from
      t.string :to
      t.time :departing_time
      t.date :date

      t.timestamps
    end
  end
end
