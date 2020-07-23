class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email

  has_many :favorite_recipes
end
