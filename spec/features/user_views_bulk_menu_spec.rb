# As a guest user,
# When I visit the homepage,
# I want to be able to click a link to see the bulk menu,
# So that I can view more details about the bulk food options offered

require 'rails_helper'

feature 'User views bulk menu' do
  scenario 'by clicking on a link in the navbar' do
    visit root_path

    click_link 'Bulk Menu'

    expect(page).to have_content 'Bulk Menu'
    expect(page).to have_css '.bulk-menu'
    expect(page).to have_css '.bulk-item'
  end
end
