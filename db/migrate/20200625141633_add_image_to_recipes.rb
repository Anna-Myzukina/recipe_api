class AddImageToRecipes < ActiveRecord::Migration[6.0]
  def change
    add_column :recipes, :image, :string, default: 'https://github.com/Anna-Myzukina/microgreen/blob/master/src/img/easy-microgreens.jpg'
  end
end
