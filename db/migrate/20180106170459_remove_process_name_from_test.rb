class RemoveProcessNameFromTest < ActiveRecord::Migration[5.1]
  def change
    remove_column :tests, :process_name, :string
  end
end
