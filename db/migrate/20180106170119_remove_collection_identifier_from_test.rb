class RemoveCollectionIdentifierFromTest < ActiveRecord::Migration[5.1]
  def change
    remove_column :tests, :collection_identifier, :integer
  end
end
