FactoryGirl.define do
  factory :quantity do
    # attributes
    description {  Faker::Lorem.sentence }
    price { rand(1..5) }
    quantity { rand(1..4) }
    measurement { %w(kgs grammes tsps).sample }

    # associations
    ingredient
    recipe

  end
end