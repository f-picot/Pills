class AddPriceToCart < ActiveRecord::Migration[5.0]
  def change
    add_monetize :carts, :price, currency: { present: false }
    # t.monetize :price, currency: { present: false }
  end
end
