class ChangePriceFormatInMyTable < ActiveRecord::Migration[5.0]
   def up
    change_column :pills, :price, :decimal
  end

  def down
    change_column :pills, :price, :integer
  end
end
