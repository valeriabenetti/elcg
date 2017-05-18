class CreateTests < ActiveRecord::Migration[5.1]
  def change
    create_table :tests do |t|
      t.integer :procedure_identifier
      t.string :procedure_name
      t.string :procedure_master_number
      t.text :synonyms
      t.string :test_code
      t.integer :category_code
      t.string :category_name
      t.boolean :eppicare_inactive_flag
      t.boolean :orderable
      t.integer :collection_identifier
      t.string :collection_name
      t.text :collection_instructions
      t.integer :process_identifier
      t.string :process_name
      t.text :process_intructions

      t.timestamps
    end
  end
end
