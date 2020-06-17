class Recipe < ApplicationRecord
  belongs_to :user
  has_many :favorites, foreign_key: :favorite_recipe_id
  has_many :clients, through: :favorites, source: :client

  validates :title, presence: true, length: { minimum: 5}
  validates :ingredients, presence: true, length: { minimum: 5}
  validates :description, presence: true, length: { minimum: 5}
  validates :calories, presence: true
  

end
