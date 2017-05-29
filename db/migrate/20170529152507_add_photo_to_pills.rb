class AddPhotoToPills < ActiveRecord::Migration[5.0]
  def change
    add_column :pills, :photo, :string
  end
end
