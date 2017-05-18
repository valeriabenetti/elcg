class AddCategoryNameToCatalog < ActiveRecord::Migration[5.1]
  def change
    add_column :catalogs, :category_name, :string
  end
end
