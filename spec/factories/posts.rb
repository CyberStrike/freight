FactoryGirl.define do
  factory :post do
    user nil
    title Faker::Lorem.characters(character_count = 30)
    body Faker::DizzleIpsum.paragraphs(paragraph_count = 3).join(',')
    published false
  end
end
