class AddPhotoBrandToPills < ActiveRecord::Migration[5.0]
  def change
    add_column :pills, :brandphoto, :string
  end
end
