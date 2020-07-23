json.extract! favorite, :id, :client_id, :favorite_recipe_id, :rate, :created_at, :updated_at
json.url favorite_url(favorite, format: :json)
