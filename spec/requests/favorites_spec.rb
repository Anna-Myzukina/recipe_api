require 'rails_helper'

RSpec.describe "Favorites", type: :request do
  describe "POST /favorites" do
    it "returns list of favorites recipes" do
      post ("/api/v1/recipes/:recipe_id/favorite")
      json_response = JSON.parse(response.body)
      expect(response).to have_http_status(200)
    end
    it "doesn`t return list of favorites recipes" do
      post ("/api/v1/recipes/:recipe_id/favorite")
      expect(response).to have_http_status(404)
    end
  end
end
