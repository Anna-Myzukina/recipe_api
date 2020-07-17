FactoryBot.define do
  factory :user do
    name { 'Anna' }
    email { 'annamuz@gmail.com' }
    password_digest { '123abc' }
    role { 0 }
  end
end
