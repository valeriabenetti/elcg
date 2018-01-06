class RemoveProcedureIdentifierFromTest < ActiveRecord::Migration[5.1]
  def change
    remove_column :tests, :procedure_identifier, :integer
  end
end
