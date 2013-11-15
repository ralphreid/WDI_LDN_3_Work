FactoryGirl.define do
  
  factory :user do
    sequence(:name) { |n| "user-#{n}"}
    email { "#{name}@gmail.com" } #dependaent attribute
    password "password"
    role "user"
  
    trait :with_recipes do
      ignore do
          recipe_count 3 # tell FG this not an attribute
        end

        after(:create) do |user, evaluator|
          FactoryGirl.create_list :recipe_with_quantities, evaluator.recipe_count, user: user
        end
    end

    factory :admin do
      role "admin"
    end

    factory :moderator do
      role "moderator"
    end

    factory :chef do
      role "chef"
      factory :chef_with_recipes, traits: [:with_recipes]
    end
    
    factory :author do
      role "author"
      factory :author_with_recipes, traits: [:with_recipes]
        
      end
    end

  end