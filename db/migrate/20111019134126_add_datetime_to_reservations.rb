class AddDatetimeToReservations < ActiveRecord::Migration
  def change
    add_column :reservations, :starttime, :datetime
  end
end
