FactoryGirl.define do

  factory :recipe do
    #attributes
    sequence(:name) { |n| "recipe-#{n}" }
    course { %w(starter main dessert).sample }
    cooktime { rand(10..70) }
    servingsize { rand(1..4) }
    instructions { Faker::Lorem.paragraph }
    image { "#{name}-image.jpg" }
    #associations
    user

    factory :recipe_with_quantities do
      ignore do
        quantity_count 5
      end

      after(:create) do |recipe, evaluator|
        FactoryGirl.create_list :quantity, evaluator.quantity_count, recipe: recipe
      end
    end

  end

end