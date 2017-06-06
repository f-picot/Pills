class ChangeTypeDeliveryTimeAtCart < ActiveRecord::Migration[5.0]
  def change
    change_column :carts, :delivery_time, :datetime
  end
end
