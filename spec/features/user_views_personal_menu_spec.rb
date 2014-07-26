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
    visit root_path

    click_link 'Personal Menu'

    expect(page).to have_content 'Personal Menu'
    expect(page).to have_css '.personal-menu'
    expect(page).to have_css '.personal-item'
    expect(page).to have_link 'Build-Your-Own'
  end
end
