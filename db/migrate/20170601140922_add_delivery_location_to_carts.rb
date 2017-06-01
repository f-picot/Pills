class AddDeliveryLocationToCarts < ActiveRecord::Migration[5.0]
  def change
    add_column :carts, :delivery_location, :string
  end
end
