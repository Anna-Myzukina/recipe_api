require 'rails_helper'

describe 'check validations' do
  it { should validate_presence_of :rate }
end
