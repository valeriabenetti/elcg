class RenameFavoriteToFavorite < ActiveRecord::Migration[5.1]
  def change
    rename_table :favorties, :favorites
  end
end
