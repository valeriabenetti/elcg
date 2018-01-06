class RemoveCollectionNameFromTest < ActiveRecord::Migration[5.1]
  def change
    remove_column :tests, :collection_name, :string
  end
end
