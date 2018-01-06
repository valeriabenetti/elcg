class RemoveProcessIdentifierFromTest < ActiveRecord::Migration[5.1]
  def change
    remove_column :tests, :process_identifier, :integer
  end
end
