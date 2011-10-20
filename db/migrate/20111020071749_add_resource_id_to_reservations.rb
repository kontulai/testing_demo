class AddResourceIdToReservations < ActiveRecord::Migration
  def change
    add_column :reservations, :resource_id, :integer
  end
end
