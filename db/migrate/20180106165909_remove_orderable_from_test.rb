class RemoveOrderableFromTest < ActiveRecord::Migration[5.1]
  def change
    remove_column :tests, :orderable, :boolean
  end
end
