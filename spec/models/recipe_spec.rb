require 'rails_helper'

describe 'check validations' do
  it { should validate_presence_of :title }
  it { should validate_presence_of :ingredients }
  it { should validate_presence_of :description }
  it { should validate_presence_of :calories }
end
