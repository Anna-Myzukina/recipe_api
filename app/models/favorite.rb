class Favorite < ApplicationRecord
  belogs_to :client, class_name: :User
  belogs_to :favorite_recipe, class_name: :Recipe

end
