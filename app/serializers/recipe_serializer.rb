class RecipeSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :image, :ingredients, :calories
end
