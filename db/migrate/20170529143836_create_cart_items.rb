class CreateCartItems < ActiveRecord::Migration[5.0]
  def change
    create_table :cart_items do |t|
      t.references :pill, foreign_key: true
      t.integer :quantity
      t.references :cart, foreign_key: true

      t.timestamps
    end
  end
end
