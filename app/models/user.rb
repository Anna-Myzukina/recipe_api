class User < ApplicationRecord
    has_secure_password

    has_many :favorites, foreign_key: :client_id
    has_many :favorite_recipes, through: :favorites, source: :favorite_recipe
    has_many :recipes

    validates :name, presence: true
    validates :password_digest, presence: true
    validates :email, presence: true, uniqueness: { case_sensitive: false }

    def to_token_payload
        {
          sub: id,
          name: name
        }
    end

    
end
