# As a guest user,
# When I visit the bulk menu page and select an item or items,
# I can add the item(s) to a current order,
# So I can keep track of what I have selected

require 'rails_helper'

feature 'User orders bulk menu item' do
  scenario 'by completing out a form on the bulk menu item page' do
    menu_item = create(:menu_item, is_bulk: true)
    visit root_path
    click_link 'Bulk Order'
    within("[data-id='#{menu_item.id}']") do
      click_link menu_item.name
    end

    select '2', from: "Quantity"
    click_button "Add to Order"

    expect(page).to have_content menu_item.name
  end
end
