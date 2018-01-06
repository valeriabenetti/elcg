class RemoveEppicareInactiveFlagFromTest < ActiveRecord::Migration[5.1]
  def change
    remove_column :tests, :eppicare_inactive_flag, :boolean
  end
end
