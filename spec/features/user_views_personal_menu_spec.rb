# As a guest user,
# When I visit the homepage,
# I want to be able to click a link to see the personal menu,
# So that I can view more details about the personal food options offered

# As a guest user,
# When I visit the personal menu page,
# I want to be to see a list of personal menu items,
# So that I know what I can order to eat

require 'rails_helper'

feature 'User views personal menu' do
  scenario 'by clicking on a link in the navbar' do
    menu_items = create_list(:menu_item, 3)
    visit root_path

    click_link 'Personal Menu'

    menu_items.each do |menu_item|
      within('.personal-menu', text: 'Personal Menu') do
        expect(page).to have_css '.personal-item', text: menu_item.name
      end
    end
    expect(page).to have_link 'Build-Your-Own'
  end
end
