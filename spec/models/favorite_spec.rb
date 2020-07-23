require 'rails_helper'

RSpec.describe Favorite, type: :model do
  describe 'association test' do
    it { should belong_to(:favorite_recipe) }
    it { should belong_to(:client) }
  end
  describe 'validation' do
    it { should validate_presence_of :rate }
  end
end
