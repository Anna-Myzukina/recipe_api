class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :client_id, :favorite_recipe_id, :rate
end
