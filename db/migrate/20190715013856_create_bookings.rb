class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.date :date
      t.references :guide, foreign_key: true
      t.references :traveller, foreign_key: true

      t.timestamps
    end
  end
end
