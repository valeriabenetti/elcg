class RemoveCategoryNameFromTest < ActiveRecord::Migration[5.1]
  def change
    remove_column :tests, :category_name, :string
  end
end
