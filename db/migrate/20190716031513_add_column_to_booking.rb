class AddColumnToBooking < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :user_id, :integer
    remove_column :bookings, :traveller_id, :integer
  end
end
