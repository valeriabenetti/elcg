class RemoveCategoryCodeFromTest < ActiveRecord::Migration[5.1]
  def change
    remove_column :tests, :category_code, :integer
  end
end
