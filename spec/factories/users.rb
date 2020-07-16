FactoryBot.define do
    factory :user do
      username { 'MyString' }
      email { 'annamuz@gmail.com' }
      password_digest { 'MyString' }
      role { 0 }
    end
  end