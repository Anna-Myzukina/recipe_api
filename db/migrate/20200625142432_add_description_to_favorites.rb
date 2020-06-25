class AddDescriptionToFavorites < ActiveRecord::Migration[6.0]
  def change
    add_column :favorites, :description, :string
  end
end
