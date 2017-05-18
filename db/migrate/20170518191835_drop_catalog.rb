class DropCatalog < ActiveRecord::Migration[5.1]
  def change
    drop_table :catalogs
  end
end
