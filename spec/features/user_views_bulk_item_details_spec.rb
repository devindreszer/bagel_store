# As a guest user,
# When I visit the bulk menu page and click on an item,
# I want to see a description of the item and the quantities I can order,
# So I can decide what to order

require 'rails_helper'

feature 'User views bulk menu item details' do
  scenario 'by clicking on an item link on the bulk menu page' do
    menu_item = create(:menu_item, is_bulk: true)
    visit root_path
    click_link 'Bulk Order'

    within("[data-id='#{menu_item.id}']") do
      click_link menu_item.name
    end

    expect(page).to have_css '.item-name', text: menu_item.name
    expect(page).to have_css '.item-price', text: menu_item.price
    expect(page).to have_css '.item-description', text: menu_item.description
    within('form') do
      expect(page).to have_css 'label', text: 'Quantity'
    end
  end
end
