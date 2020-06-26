class FavouriteSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description, :score
end
