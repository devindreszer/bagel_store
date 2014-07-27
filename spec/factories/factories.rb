FactoryGirl.define do
  factory :menu_item do
    name { Faker::Lorem.word }
    price { rand(1..5) }
    description { Faker::Lorem.sentence }
  end

  factory :ingredient do
    name { Faker::Lorem.word }
    price { rand(1..5) }
  end

  factory :menu_option do
    menu_item
    ingredient
  end
end
