MenuItem.delete_all
Ingredient.delete_all
User.delete_all

devin = User.create!(
  username: 'devin',
  email: 'devin@example.com',
  password: 'password'
  )

custom_order = MenuItem.create!(
  name: "Custom Bagel Sandwich",
  price: 4.00,
  description: 'Build your own custom bagel sandwich',
  image_url: 'https://www.panerabread.com/panerabread/menu/details/plain-bagel.jpg/_jcr_content/renditions/plain-bagel.desktop.jpeg',
  is_bulk: false
  )

sm_bagel_box_plain = MenuItem.create!(
  name: "Small Bagel Box - Plain Bagels (12)",
  price: 12.00,
  description: 'A small bagel box containing one dozen plain bagels',
  image_url: 'https://www.panerabread.com/panerabread/menu/details/plain-bagel.jpg/_jcr_content/renditions/plain-bagel.desktop.jpeg',
  is_bulk: true
  )

sm_bagel_box_var = MenuItem.create!(
  name: "Small Bagel Box - Variety Assortment (12)",
  price: 14.00,
  description: 'A small bagel box containing two of each: plain, sesame seed, poppy seed, onion, whole wheat, cinnamon raisin',
  image_url: 'https://www.panerabread.com/panerabread/menu/details/everything-bagel.jpg/_jcr_content/renditions/everything-bagel.desktop.jpeg',
  is_bulk: true
  )

sm_bagel_box_single_var = MenuItem.create!(
  name: "Small Bagel Box - Single Variety (12)",
  price: 14.00,
  description: 'A small bagel box containing one dozen of any single variety bagel',
  image_url: 'https://www.panerabread.com/panerabread/menu/details/everything-bagel.jpg/_jcr_content/renditions/everything-bagel.desktop.jpeg',
  is_bulk: true
  )

lg_bagel_box_plain = MenuItem.create!(
  name: "Large Bagel Box - Plain Bagels (18)",
  price: 18.00,
  description: 'A large bagel box containing eighteen plain bagels',
  image_url: 'https://www.panerabread.com/panerabread/menu/details/plain-bagel.jpg/_jcr_content/renditions/plain-bagel.desktop.jpeg',
  is_bulk: true
  )

lg_bagel_box_var = MenuItem.create!(
  name: "Large Bagel Box - Variety Assortment (18)",
  price: 20.00,
  description: 'A large bagel box containing three of each: plain, sesame seed, poppy seed, onion, whole wheat, cinnamon raisin',
  image_url: 'https://www.panerabread.com/panerabread/menu/details/everything-bagel.jpg/_jcr_content/renditions/everything-bagel.desktop.jpeg',
  is_bulk: true
  )

lg_bagel_box_single_var = MenuItem.create!(
  name: "Large Bagel Box - Single Variety (18)",
  price: 20.00,
  description: 'A large bagel box containing eighteen of any single variety bagel',
  image_url: 'https://www.panerabread.com/panerabread/menu/details/everything-bagel.jpg/_jcr_content/renditions/everything-bagel.desktop.jpeg',
  is_bulk: true
  )

plain_cc_bulk = MenuItem.create!(
  name: "Plain Cream Cheese",
  price: 2.50,
  description: 'Plain Cream Cheese',
  image_url: 'https://www.panerabread.com/panerabread/menu/details/plain-cream-cheese.jpg/_jcr_content/renditions/plain-cream-cheese.desktop.jpeg',
  is_bulk: true
  )

chive_cc_bulk = MenuItem.create!(
  name: "Chive Cream Cheese",
  price: 3.00,
  description: 'Chive Cream Cheese',
  image_url: 'https://www.panerabread.com/panerabread/menu/details/reduced-fat-chive-and-onion-cream-cheese.jpg/_jcr_content/renditions/reduced-fat-chive-and-onion-cream-cheese.desktop.jpeg',
  is_bulk: true
  )

tofutti_cc_bulk = MenuItem.create!(
  name: "Tofutti Cream Cheese",
  price: 4.00,
  description: 'Tofutti Cream Cheese',
  image_url: 'https://www.panerabread.com/panerabread/menu/details/reduced-fat-roasted-vegetable-cream-cheese.jpg/_jcr_content/renditions/reduced-fat-roasted-vegetable-cream-cheese.desktop.jpeg',
  is_bulk: true
  )

salmon_spread_bulk = MenuItem.create!(
  name: "Salmon Spread",
  price: 4.00,
  description: 'Salmon Spread',
  image_url: 'https://www.panerabread.com/panerabread/menu/details/reduced-fat-honey-walnut-cream-cheese.jpg/_jcr_content/renditions/reduced-fat-honey-walnut-cream-cheese.desktop.jpeg',
  is_bulk: true
  )

party_box = MenuItem.create!(
  name: "Party Box",
  price: 50.00,
  description: 'Twenty five bagels plus plain and chive cream cheese',
  image_url: 'https://www.panerabread.com/panerabread/menu/details/plain-bagel.jpg/_jcr_content/renditions/plain-bagel.desktop.jpeg',
  is_bulk: true
  )

somerville = MenuItem.create!(
  name: "The Somerville",
  price: 7.00,
  description: 'Whole wheat bagel with avocado, tomato, cucumber and tofutti cream cheese',
  image_url: "https://www.panerabread.com/panerabread/menu/details/egg-white-avocado-and-spinach-breakfast-power-sandwich.jpg/_jcr_content/renditions/egg-white-avocado-and-spinach-breakfast-power-sandwich.desktop.jpeg",
  is_bulk: false
  )

north_end = MenuItem.create!(
  name: "The North End",
  price: 7.50,
  description: 'Onion bagel with roast beef, tomato, red onions, asiago cheese, provolone cheese and mayonnaise',
  image_url: 'https://www.panerabread.com/panerabread/menu/details/steak-and-egg-on-everything-bagel.jpg/_jcr_content/renditions/steak-and-egg-on-everything-bagel.desktop.jpeg',
  is_bulk: false
  )

south_end = MenuItem.create!(
  name: "The South End",
  price: 7.50,
  description: 'Sesame bagel with corned beef, coleslaw, swiss cheese, tomato and spicy mustard',
  image_url: 'https://www.panerabread.com/panerabread/menu/details/sesame-bagel.jpg/_jcr_content/renditions/sesame-bagel.desktop.jpeg',
  is_bulk: false
  )

hub = MenuItem.create!(
  name: "The Hub",
  price: 7.00,
  description: 'Plain bagel with turkey, garlic mayonnaise, tomato, cucumber and sprouts',
  image_url: 'https://www.panerabread.com/panerabread/menu/details/sierra-turkey-sandwich-whole.jpg/_jcr_content/renditions/sierra-turkey-sandwich-whole.desktop.jpeg',
  is_bulk: false
  )

brookline = MenuItem.create!(
  name: "The Brookline",
  price: 8.50,
  description: 'Plain bagel with cream cheese, tomato, red onions and smoked salmon',
  image_url: "https://www.panerabread.com/panerabread/menu/details/egg-white-avocado-and-spinach-breakfast-power-sandwich.jpg/_jcr_content/renditions/egg-white-avocado-and-spinach-breakfast-power-sandwich.desktop.jpeg",
  is_bulk: false
  )

sm_soda = MenuItem.create!(
  name: "Small Fountain Soda",
  price: 2.75,
  description: 'Small Fountain Soda',
  image_url: 'https://www.panerabread.com/content/dam/panerabread/menu/details/pepsi-large.jpg',
  is_bulk: false
  )

lg_soda = MenuItem.create!(
  name: "Large Fountain Soda",
  price: 3.50,
  description: 'Large Fountain Soda',
  image_url: 'https://www.panerabread.com/content/dam/panerabread/menu/details/pepsi-large.jpg',
  is_bulk: false
  )

sm_coffee = MenuItem.create!(
  name: "Small Hot Coffee",
  price: 2.00,
  description: 'Small Hot Coffee',
  image_url: 'https://www.panerabread.com/panerabread/menu/details/hot-coffee.jpg/_jcr_content/renditions/hot-coffee.desktop.jpeg',
  is_bulk: false
  )

lg_coffee = MenuItem.create!(
  name: "Large Hot Coffee",
  price: 2.50,
  description: 'Large Hot Coffee',
  image_url: 'https://www.panerabread.com/panerabread/menu/details/hot-coffee.jpg/_jcr_content/renditions/hot-coffee.desktop.jpeg',
  is_bulk: false
  )

sm_latte = MenuItem.create!(
  name: "Small Latte",
  price: 3.50,
  description: 'Small Latte',
  image_url: 'https://www.panerabread.com/panerabread/menu/details/caffe-latte-large.jpg/_jcr_content/renditions/caffe-latte-large.desktop.jpeg',
  is_bulk: false
  )

lg_latte = MenuItem.create!(
  name: "Large Latte",
  price: 4.25,
  description: 'Large Latte',
  image_url: 'https://www.panerabread.com/panerabread/menu/details/caffe-latte-large.jpg/_jcr_content/renditions/caffe-latte-large.desktop.jpeg',
  is_bulk: false
  )

plain_bagel = Ingredient.create!(
  name: "Plain Bagel",
  price: 0.00,
  category: 'bagel'
  )

sesame_bagel = Ingredient.create!(
  name: "Sesame Seed Bagel",
  price: 1.00,
  category: 'variety bagel'
  )

poppy_bagel = Ingredient.create!(
  name: "Poppy Seed Bagel",
  price: 1.00,
  category: 'variety bagel'
  )

onion_bagel = Ingredient.create!(
  name: "Onion Bagel",
  price: 1.00,
  category: 'variety bagel'
  )

wheat_bagel = Ingredient.create!(
  name: "Whole Wheat Bagel",
  price: 1.00,
  category: 'variety bagel'
  )

raisin_bagel = Ingredient.create!(
  name: "Cinnamon Raisin Bagel",
  price: 1.00,
  category: 'variety bagel'
  )

tomato = Ingredient.create!(
  name: "Tomato",
  price: 0.00,
  category: 'topping'
  )

cucumber = Ingredient.create!(
  name: "Cucumber",
  price: 0.00,
  category: 'topping'
  )

red_onions = Ingredient.create!(
  name: "Red Onions",
  price: 0.00,
  category: 'topping'
  )

coleslaw = Ingredient.create!(
  name: "Coleslaw",
  price: 0.00,
  category: 'topping'
  )

plain_cc = Ingredient.create!(
  name: "Plain Cream Cheese",
  price: 1.50,
  category: 'basic cc'
  )

chive_cc = Ingredient.create!(
  name: "Chive Cream Cheese",
  price: 1.50,
  category: 'basic cc'
  )

tofutti_cc = Ingredient.create!(
  name: "Tofutti Cream Cheese",
  price: 2.00,
  category: 'deluxe cc'
  )

salmon_spread = Ingredient.create!(
  name: "Salmon Spread",
  price: 2.00,
  category: 'deluxe cc'
  )

sprouts = Ingredient.create!(
  name: "Sprouts",
  price: 0.30,
  category: 'topping'
  )

asiago = Ingredient.create!(
  name: "Asiago Cheese",
  price: 0.30,
  category: 'cheese'
  )

provolone = Ingredient.create!(
  name: "Provolone Cheese",
  price: 0.30,
  category: 'cheese'
  )

swiss = Ingredient.create!(
  name: "Swiss Cheese",
  price: 0.30,
  category: 'cheese'
  )

cheddar = Ingredient.create!(
  name: "Cheddar Cheese",
  price: 0.30,
  category: 'cheese'
  )

mayo = Ingredient.create!(
  name: "Mayonnaise",
  price: 0.50,
  category: 'topping'
  )

garlic_mayo = Ingredient.create!(
  name: "Garlic Mayonnaise",
  price: 0.50,
  category: 'topping'
  )

mustard = Ingredient.create!(
  name: "Mustard",
  price: 0.50,
  category: 'topping'
  )

spicy_mustard = Ingredient.create!(
  name: "Spicy Mustard",
  price: 0.50,
  category: 'topping'
  )

avocado = Ingredient.create!(
  name: "Avocado",
  price: 2.00,
  category: 'topping'
  )

turkey = Ingredient.create!(
  name: "Turkey",
  price: 2.00,
  category: 'meat'

  )

roast_beef = Ingredient.create!(
  name: "Roast Beef",
  price: 2.00,
  category: 'meat'
  )

corned_beef = Ingredient.create!(
  name: "Corned Beef",
  price: 3.00,
  category: 'meat'
  )

smoked_salmon = Ingredient.create!(
  name: "Smoked Salmon",
  price: 3.50,
  category: 'meat'
  )


# bagel options
# regular options
custom_order_ingredients = [plain_bagel]
custom_order_ingredients.each do |ingredient|
  custom_order.options.create!(ingredient_id: ingredient.id, is_addon: false)
end

somerville_ingredients = [wheat_bagel, avocado, tomato, cucumber, tofutti_cc]
somerville_ingredients.each do |ingredient|
  somerville.options.create!(ingredient_id: ingredient.id, is_addon: false)
end

north_end_ingredients = [onion_bagel, roast_beef, tomato, red_onions, asiago, provolone, mayo]
north_end_ingredients.each do |ingredient|
  north_end.options.create!(ingredient_id: ingredient.id, is_addon: false)
end

south_end_ingredients = [sesame_bagel, corned_beef, coleslaw, swiss, tomato, spicy_mustard]
south_end_ingredients.each do |ingredient|
  south_end.options.create!(ingredient_id: ingredient.id, is_addon: false)
end

hub_ingredients = [plain_bagel, turkey, garlic_mayo, tomato, cucumber, sprouts]
hub_ingredients.each do |ingredient|
  hub.options.create!(ingredient_id: ingredient.id, is_addon: false)
end

brookline_ingredients = [plain_bagel, plain_cc, tomato, red_onions, smoked_salmon]
brookline_ingredients.each do |ingredient|
  brookline.options.create!(ingredient_id: ingredient.id, is_addon: false)
end

# add on options
sandwiches = [custom_order, somerville, north_end, south_end, hub, brookline]
sandwiches.each do |sandwich|
  ingredients = [plain_bagel, sesame_bagel, poppy_bagel, onion_bagel, wheat_bagel, raisin_bagel, tomato, cucumber, red_onions, coleslaw, plain_cc, chive_cc, tofutti_cc, salmon_spread, sprouts, asiago, provolone, swiss, cheddar, mayo, garlic_mayo, mustard, spicy_mustard, avocado, turkey, roast_beef, corned_beef, smoked_salmon]
  ingredients.each do |ingredient|
    if !sandwich.options.find_by(ingredient_id: ingredient.id).present?
      sandwich.options.create!(ingredient_id: ingredient.id, is_addon: true)
    end
  end
end

boxes = [sm_bagel_box_single_var, lg_bagel_box_single_var]
boxes.each do |box|
  flavors = [sesame_bagel, poppy_bagel, onion_bagel, wheat_bagel, raisin_bagel]
  flavors.each do |flavor|
    box.options.create!(ingredient_id: flavor.id, is_addon: false)
  end
end
