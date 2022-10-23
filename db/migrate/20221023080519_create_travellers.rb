class CreateTravellers < ActiveRecord::Migration[7.0]
  def change
    create_table :travellers do |t|
      t.string :name
      t.integer :phone_number
      t.references :bus, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
