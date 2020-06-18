class User < ApplicationRecord
    ROLES = [:client, :admin].freeze
    enum role: ROLES

    has_many :favorites, foreign_key: :client_id
    has_many :favorite_recipes, through: :favorites, source: :favorite_recipe
    has_many :recipes

    validates :name, presence: true
    validates :password_digest, presence: true
    validates :email, uniqueness: true

    has_secure_password

    
end
