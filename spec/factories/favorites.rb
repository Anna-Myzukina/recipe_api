FactoryBot.define do
  factory :favorite do
    client_id { 1 }
    favorite_recipe_id { 1 }
    rate { 1 }
  end
end
