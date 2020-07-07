require 'rails_helper'

describe 'should have a secure password' do
  it { should have_secure_password }
end

describe 'check validations' do
  it { should validate_presence_of :name }
  it { should validate_presence_of :email }
  it { should validate_presence_of :description }
  it { should validate_presence_of :calories }
end
