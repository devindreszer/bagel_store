FactoryGirl.define do
  factory :menu_item do
    name { Faker::Lorem.word }
    image_url "https://www.panerabread.com/panerabread/menu/details/egg-white-avocado-and-spinach-breakfast-power-sandwich.jpg/_jcr_content/renditions/egg-white-avocado-and-spinach-breakfast-power-sandwich.desktop.jpeg"
    price { rand(1..5) }
    description { Faker::Lorem.sentence }
    is_bulk false
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
