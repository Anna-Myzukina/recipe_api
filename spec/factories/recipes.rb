FactoryBot.define do
  factory :recipe do
    title { "MyString" }
    ingredients { "MyText" }
    description { "MyText" }
    calories { 1 }
    user { nil }
  end
end
