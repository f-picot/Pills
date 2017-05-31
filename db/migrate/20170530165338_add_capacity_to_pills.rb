class AddCapacityToPills < ActiveRecord::Migration[5.0]
  def change
    add_column :pills, :capacity, :string
  end
end
