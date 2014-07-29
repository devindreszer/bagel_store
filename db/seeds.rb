MenuItem.delete_all
Ingredient.delete_all

north_end = MenuItem.create!(
  name: "The North End",
  price: 7.50,
  description: 'Onion bagel with roast beef, tomato, red onions, asiago cheese, provolone cheese, and mayonnaise.',
  image_url: "https://www.panerabread.com/panerabread/menu/details/egg-white-avocado-and-spinach-breakfast-power-sandwich.jpg/_jcr_content/renditions/egg-white-avocado-and-spinach-breakfast-power-sandwich.desktop.jpeg",
  is_bulk: false
  )

variety_bagel = Ingredient.create!(
  name: "variety bagel",
  price: 5.00,
  )

roast_beef = Ingredient.create!(
  name: "roast beef",
  price: 2.00,
  )

tomato = Ingredient.create!(
  name: "tomato",
  price: 0.00,
  )

red_onion = Ingredient.create!(
  name: "red onion",
  price: 0.00,
  )

asiago_cheese = Ingredient.create!(
  name: "asiago cheese",
  price: 0.30,
  )

provolone_cheese = Ingredient.create!(
  name: "provolone cheese",
  price: 0.30,
  )

mayonnaise = Ingredient.create!(
  name: "mayonnaise",
  price: 0.30,
  )

sprouts = Ingredient.create!(
  name: "sprouts",
  price: 0.30,
  )

# bagel options
# regular options
north_end_ingredients = [variety_bagel, roast_beef, tomato, red_onion, asiago_cheese, provolone_cheese, mayonnaise]
north_end_ingredients.each do |ingredient|
  north_end.options.create!(ingredient_id: ingredient.id, is_addon: false)
end

# add on options
sandwiches = [north_end]
sandwiches.each do |sandwich|
  ingredients = [tomato, mayonnaise, sprouts]
  ingredients.each do |ingredient|
    if !sandwich.options.find_by(ingredient_id: ingredient.id).present?
      north_end.options.create!(ingredient_id: ingredient.id, is_addon: true)
    end
  end
end
