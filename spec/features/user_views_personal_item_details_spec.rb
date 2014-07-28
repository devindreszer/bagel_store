# As a guest user,
# When I visit the personal menu page and click on an item,
# I want to see a description of the item and what ingredients I can add or remove,
# So I can customize my order

require 'rails_helper'

feature 'User views personal menu item details' do
  scenario 'by clicking on an item link on the personal menu page' do
    menu_item = create(:menu_item)
    menu_item.ingredients = create_list(:ingredient, 5)
    menu_item.options.each do |option|
      option.is_addon = false
      option.save
    end
    last_option = menu_item.options.last
    last_option.is_addon = true
    last_option.save
    visit root_path
    click_link 'Personal Menu'

    within("[data-id='#{menu_item.id}']") do
      click_link menu_item.name
    end

    expect(page).to have_css '.item-name', text: menu_item.name
    expect(page).to have_css '.item-price', text: menu_item.price
    expect(page).to have_css '.item-description', text: menu_item.description
    within('form') do
      menu_item.ingredients.each do |ingredient|
        expect(page).to have_css 'label', text: ingredient.name.capitalize
      end
      expect(page).to have_css 'label', text: 'Quantity'
    end
  end
end
