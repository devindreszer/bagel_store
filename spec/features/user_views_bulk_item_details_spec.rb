# As a guest user,
# When I visit the bulk menu page and click on an item,
# I want to see a description of the item and the quantities I can order,
# So I can decide what to order

require 'rails_helper'

feature 'User views bulk menu item details' do
  scenario 'by clicking on an item link on the bulk menu page' do
    menu_item = create(:menu_item)
    visit root_path
    click_link 'Bulk Menu'

    click_link "[data-id='#{menu_item.name}']"

    expect(page).to have_css '.item-name', text: menu_item.name
    expect(page).to have_css '.item-price', text: menu_item.price
    expect(page).to have_css '.item-description', text: menu_item.description
    expect(page).to have_css 'form'
  end
end
