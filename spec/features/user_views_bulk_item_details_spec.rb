# As a guest user,
# When I visit the bulk menu page and click on an item,
# I want to see a description of the item and the quantities I can order,
# So I can decide what to order

require 'rails_helper'

feature 'User views bulk menu item details' do
  scenario 'by clicking on an item link on the bulk menu page' do
    visit root_path
    click_link 'Bulk Menu'

    click_link 'bulk-item'

    expect(page).to have_css '.item-name'
    expect(page).to have_css '.item-price'
    expect(page).to have_css '.item-description'
    expect(page).to have_css 'form'
  end
end
