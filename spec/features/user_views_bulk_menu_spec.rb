# As a guest user,
# When I visit the homepage,
# I want to be able to click a link to see the bulk menu,
# So that I can view more details about the bulk food options offered

# As a guest user,
# When I visit the bulk menu page,
# I want to be to see a list of bulk menu items,
# So that I know what I can order in bulk

require 'rails_helper'

feature 'User views bulk menu' do
  scenario 'by clicking on a link in the navbar' do
    menu_item1 = create(:menu_item, is_bulk: true)
    menu_item2 = create(:menu_item, is_bulk: true)
    menu_item3 = create(:menu_item, is_bulk: true)
    menu_items = [menu_item1, menu_item2, menu_item3]
    visit root_path

    click_link 'Bulk Order'

    menu_items.each do |menu_item|
      within('.menu') do
        within("[data-id='#{menu_item.id}']") do
          expect(page).to have_content menu_item.name
        end
      end
    end
  end
end
