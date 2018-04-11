class AddShipperToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :shipper, :string
  end
end
