class Recipe < ApplicationRecord
  belongs_to :user
  has_many :favorites
  has_many :clients, through: :favorites, source: :client

  validates :title, presence: true, length: { minimum: 5}
  validates :ingredients, presence: true, length: { minimum: 5}
  validates :description, presence: true, length: { minimum: 5}
  validates :calories, presence: true
  
  before_create :create_url

  def create_url
      self.name = name.parameterize
  end

  def average_score
      favourites.average(:rate).round(2).to_f
  end

end
