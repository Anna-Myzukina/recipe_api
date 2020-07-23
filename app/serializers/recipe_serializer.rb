class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :title, :ingredients, :description, :calories
  has_one :user
  has_many :favorites
end
