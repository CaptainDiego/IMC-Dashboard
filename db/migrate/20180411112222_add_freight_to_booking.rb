class AddFreightToBooking < ActiveRecord::Migration[5.1]
  def change
    add_column :bookings, :freight, :integer
  end
end
