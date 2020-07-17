require 'rails_helper'

RSpec.describe 'Recipes', type: :request do

  def authenticated_header(user)
    token = JsonWebToken.encode(user_id: user.id)
    { 'Authorization': "annamuz #{token}" }
  end

  let(:user) { FactoryBot.create(:user) }
  let(:valid_headers) do
    authenticated_header(user)
  end
  let(:recipe) { FactoryBot.create(:recipe) }
  describe 'GET /recipes' do
    it 'renders a successful response' do
      get 'api/v1/recipes', headers: valid_headers, as: :json
      expect(response).to have_http_status(200)
    end
  end
end
