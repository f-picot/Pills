class AddDeliveryPriceToCarts < ActiveRecord::Migration[5.0]
  def change
    add_column :carts, :delivery_price, :decimal, default: 0
  end
end
