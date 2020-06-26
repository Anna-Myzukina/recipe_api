class Recipe < ApplicationRecord
    has_many :favourites

    validates :name, presence: true
    validates :ingredients, presence: true
    validates :description, presence: true
    validates :calories, presence: true


    before_create :create_url

    def create_url
        self.name = name.parameterize
    end

    def average_score
        favourites.average(:score).round(2).to_f
    end
end
