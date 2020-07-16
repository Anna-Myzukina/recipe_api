class Favorite < ApplicationRecord
    belongs_to :favorite_recipe, class_name: :Recipe
    belongs_to :client, class_name: :User 
end
