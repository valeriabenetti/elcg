class AddImageDataToTests < ActiveRecord::Migration[5.1]
  def change
    add_column :tests, :image_data, :text
  end
end
