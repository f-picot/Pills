class AddPriceToPills < ActiveRecord::Migration[5.0]
  def change
    add_monetize :pills, :price, currency: { present: false }
  end
end
