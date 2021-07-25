require 'faker'

FactoryBot.define do
  factory :random_article, class: Article do
    title { Faker::Lorem.sentence }
    text { Faker::Lorem.paragraph }
  end
end
