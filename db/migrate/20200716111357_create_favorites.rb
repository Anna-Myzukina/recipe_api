class CreateFavorites < ActiveRecord::Migration[6.0]
  def change
    create_table :favorites do |t|
      t.integer :client_id
      t.integer :favorite_recipe_id
      t.integer :rate

      t.timestamps
    end
    add_index :favorites, :client_id
    add_index :favorites, :favorite_recipe_id
  end
end