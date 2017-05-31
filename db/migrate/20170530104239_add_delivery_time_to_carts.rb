class AddDeliveryTimeToCarts < ActiveRecord::Migration[5.0]
  def change
    add_column :carts, :delivery_time, :date
  end
end
