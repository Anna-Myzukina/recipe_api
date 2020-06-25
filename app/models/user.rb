class User < ApplicationRecord
    ROLES = [:client, :admin].freeze
    enum role: ROLES

    has_many :favorites, foreign_key: :client_id
    has_many :favorite_recipes, through: :favorites, source: :favorite_recipe
    has_many :recipes

    validates :name, presence: true
    validates :password_digest, presence: true
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i.freeze
    validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX}

    has_secure_password

    
end
