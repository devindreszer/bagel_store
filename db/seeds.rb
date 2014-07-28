MenuItem.delete_all
Ingredient.delete_all

menu_item = MenuItem.create!(
  name: "Bagel",
  price: 2.50,
  description: 'bagel is good',
  image_url: "https://www.panerabread.com/panerabread/menu/details/egg-white-avocado-and-spinach-breakfast-power-sandwich.jpg/_jcr_content/renditions/egg-white-avocado-and-spinach-breakfast-power-sandwich.desktop.jpeg",
  is_bulk: false
  )

ingredient1 = Ingredient.create!(
  name: "cream cheese",
  price: 1.00,
  )

menu_item.ingredients << ingredient1
