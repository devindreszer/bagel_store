# As a guest user,
# When I visit the personal menu page and click on an item,
# I want to see a description of the item and what ingredients I can add or remove,
# So I can customize my order

require 'rails_helper'

feature 'User views personal menu item details' do
  scenario 'by clicking on an item link on the personal menu page' do
    menu_item = create!(:menu_item)
    ingredients = create_list!(:ingredients, 5)
    menu_item.ingredients << ingredients
    visit root_path
    click_link 'Personal Menu'

    click_link "[data-id='#{menu_item.id}']"

    expect(page).to have_css '.item-name', text: menu_item.name
    expect(page).to have_css '.item-price', text: menu_item.price
    expect(page).to have_css '.item-description', text: menu_item.description
    within('form') do
      menu_item.ingredients.each do |ingredient|
        expect(page).to have_css 'input', text: ingredient.name
      end
      expect(page).to have_css 'selector', text: 'quantity'
    end
  end
end
