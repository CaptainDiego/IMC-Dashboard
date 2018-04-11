class AddTransportToBooking < ActiveRecord::Migration[5.1]
  def change
    add_column :bookings, :transport, :string
  end
end
