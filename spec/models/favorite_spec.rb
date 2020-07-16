require 'rails_helper'

RSpec.describe Favorite, type: :model do
  describe 'association test' do
    it { should belong_to(:recipe) }
    it { should belong_to(:user) }
  end
  describe 'validation' do
    it { should validate_presence_of :rate }
  end
end
