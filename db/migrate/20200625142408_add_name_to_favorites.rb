class AddNameToFavorites < ActiveRecord::Migration[6.0]
  def change
    add_column :favorites, :name, :string
  end
end
