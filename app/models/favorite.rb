class Favorite < ApplicationRecord
  belongs_to :recipe
  belongs_to :client, class_name: :User
  
end
