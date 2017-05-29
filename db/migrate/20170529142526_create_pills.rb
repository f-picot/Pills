class CreatePills < ActiveRecord::Migration[5.0]
  def change
    create_table :pills do |t|
      t.string :name
      t.string :brand
      t.text :description
      t.integer :price
      t.string :category
      t.integer :stock

      t.timestamps
    end
  end
end
