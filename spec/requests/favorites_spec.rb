require 'rails_helper'

RSpec.describe "Favorites", type: :request do
  def authenticated_header(user)
    token = JsonWebToken.encode(user_id: user.id) 
    { 'Authorization': "annamuz #{token}" }
  end

  let(:user){FactoryBot.create(:user)} 
  let(:valid_headers) {
    authenticated_header(user)
  }
  let(:recipe) { FactoryBot.create(:recipe) }
  let(:favorite) { FactoryBot.create(:favorite, favorite_recipe: recipe, client: user) }

  describe 'DELETE /destroy' do
    it 'destroys the requested user' do
      delete "/api/v1/recipes/#{recipe.id}/favorite/#{favorite.id}", headers: valid_headers, as: :json
      expect(response).to be_successful
      expect(response.status).to eq(200)
      expect(response.body).to include 'Intake category deleted successfully'
    end
  end
end
