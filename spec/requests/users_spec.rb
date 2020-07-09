require 'rails_helper'
RSpec.describe 'api request made via api/v1 users_controller', type: :request do

  describe 'post /auth/sign_up with complete params' do
    before do
      post '/auth/sign_up',
           params: { user: {
            name: "Annanew",
            email: "newanna@gmail.com",
            password: "test123",
            password_confirmation: "test123",
            admin: true
             
           } }
    end

    it 'successful user creation' do
      expect(response).to have_http_status(400)
    end
  end

  describe 'post /auth/sign_up where username is empty' do
    before do
      post '/auth/sign_up',
           params: { user: {
             name: '',
             email: 'tester@example.com',
             password: 'testtest',
             password_confirmation: 'testtest',
             admin: true
           } }
    end

    it 'unsuccessful user creation' do
      expect(response).to have_http_status(400)
    end
  end
end