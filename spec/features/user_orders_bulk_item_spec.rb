# As a guest user,
# When I visit the bulk menu page and select an item or items,
# I can add the item(s) to a current order,
# So I can keep track of what I have selected

require 'rails_helper'

feature 'User orders bulk menu item' do
  scenario 'by completing out a form on the bulk menu item page' do
    menu_item = create(:menu_item)
    visit root_path
    click_link 'Bulk Menu'
    click_link "[data-id='#{menu_item.id}']"
    select '12', from: "quantity"
    click_button "Add to Order"

    within('form') do
      expect(page).to have_field 'Quantity', with: '12'
      expect(page).to have_link 'Add to Order'
    end

    expect(page).to have_text("#{order_item.quantity} #{menu_item.name}s added to cart")
  end
end
