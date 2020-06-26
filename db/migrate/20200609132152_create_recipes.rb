class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :name, null: false
      t.text :ingredients, null: false
      t.text :description, null: false
      t.string :image, default: 'https://github.com/Anna-Myzukina/microgreen/blob/master/src/img/easy-microgreens.jpg'
      t.integer :calories, null: false

      t.timestamps
    end
  end
end
