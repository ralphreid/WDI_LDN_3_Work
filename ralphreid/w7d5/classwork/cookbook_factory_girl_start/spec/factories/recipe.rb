FactoryGirl.define do
  
  factory :recipe do
    # attributes
    sequence(:name) { |n| "recipe-#{n}" }
    course { %w(starter main dessert).sample } # actually we want this run everyting as a block is a dependant variable
    cooktime { rand(10..70) }
    servingsize { rand(1..4) }
    instructions { Faker::Lorem.paragraph }
    image { "#{name}-image.jpg" }

    #assoications
    user

    #adds recipes with quantities
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