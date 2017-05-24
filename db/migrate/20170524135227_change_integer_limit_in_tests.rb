class ChangeIntegerLimitInTests < ActiveRecord::Migration[5.1]
  def change
    change_column :tests, :process_identifier, :integer, limit: 8
  end
end
