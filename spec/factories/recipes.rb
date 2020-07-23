FactoryBot.define do
  factory :recipe do
    title { 'Pizza' }
    ingredients { 'Lorem ipsum sed loran' }
    description { 'Lorem ipsum sed loran' }
    calories { 150 }
    user { nil }
  end
end
