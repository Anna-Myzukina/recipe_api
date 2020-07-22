require 'rails_helper'

RSpec.describe 'Favorites', type: :request do
  def authenticated_header(user)
    token = JsonWebToken.encode(user_id: user.id)
    { 'Authorization': "annamuz #{token}" }
  end

  let(:user) { FactoryBot.create(:user) }
  let(:valid_headers) do
    authenticated_header(user)
  end
  let(:recipe) { FactoryBot.create(:recipe, user: user) }
  let(:favorite) { FactoryBot.create(:favorite, favorite_recipe: recipe, client: user, rate: 3) }

  describe 'POST /create' do
    context 'with valid parameters' do
      it 'creates a new Favorite' do
        expect do
          post "/api/v1/recipes/#{recipe.id}/favorites",
               params: { favorite: favorite }, headers: valid_headers, as: :json
        end.to change(Favorite, :count).by(1)
      end

      it 'renders a JSON response with the new favorite' do
        post "/api/v1/recipes/#{recipe.id}/favorites",
             params: favorite, headers: valid_headers, as: :json
        expect(response).to have_http_status(:created)
      end
    end

    context 'with invalid parameters' do
      it 'does not create a new Favorite' do
        expect do
          post "/api/v1/recipes/#{recipe.id}/favorites",
               params: { favorite: '' }, headers: valid_headers, as: :json
        end.to change(Favorite, :count).by(0)
      end

    end
  end

  describe 'DELETE /destroy' do
    it 'destroys the requested user' do
      delete "/api/v1/recipes/#{recipe.id}/favorites/#{favorite.id}", headers: valid_headers, as: :json
      expect(response).to be_successful
      expect(response.status).to eq(200)
      expect(response.body).to include 'Removed from favorites successfully!'
    end
  end
end
