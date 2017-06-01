class AddCoordinatesToCarts < ActiveRecord::Migration[5.0]
  def change
    add_column :carts, :latitude, :float
    add_column :carts, :longitude, :float
  end
end
