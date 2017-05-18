class CreateCatalogs < ActiveRecord::Migration[5.1]
  def change
    create_table :catalogs do |t|
      t.integer :procedure_id
      t.string :procedure_name
      t.string :procedure_master_number
      t.text :synonyms
      t.string :test_code
      t.integer :category_code
      t.boolean :eppicare_inactive_flag
      t.boolean :orderable
      t.integer :collection_id
      t.string :collection_name
      t.text :collection_instruction
      t.integer :process_id
      t.string :process_name
      t.text :process_instruction

      t.timestamps
    end
  end
end
