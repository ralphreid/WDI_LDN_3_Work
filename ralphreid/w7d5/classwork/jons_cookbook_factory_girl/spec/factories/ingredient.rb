FactoryGirl.define do

  factory :ingredient do
    sequence(:name) { |n| "ingredient-#{n}" }
    image { "#{name}-image.jpg" }
  end

end