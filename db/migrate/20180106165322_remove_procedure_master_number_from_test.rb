class RemoveProcedureMasterNumberFromTest < ActiveRecord::Migration[5.1]
  def change
    remove_column :tests, :procedure_master_number, :string
  end
end
