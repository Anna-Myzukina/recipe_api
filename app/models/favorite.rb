class Favorite < ApplicationRecord
  belongs_to :client, class_name: :User
  belongs_to :favorite_recipe, class_name: :Recipe

  validate :rate, presence: true
end
