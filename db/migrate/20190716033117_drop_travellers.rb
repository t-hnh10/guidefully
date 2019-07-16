class DropTravellers < ActiveRecord::Migration[5.2]
  def change
    drop_table :travellers
  end
end
