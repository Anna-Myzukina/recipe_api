require 'rails_helper'

RSpec.describe User, type: :model do

let(:user) { FactoryBot.create(:user) }
  describe 'check validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :email }
    it { should validate_presence_of :password_digest }
    it { should validate_uniqueness_of(:email) }
  end
end