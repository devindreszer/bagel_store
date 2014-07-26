# As a guest user,
# When I visit the homepage,
# I want to see the app features,
# So that I can understand the app's purpose

require 'rails_helper'

feature 'User views app features' do
  scenario 'on the homepage' do
    visit root_path

    expect(page).to have_css '.features', text: 'Bulk Orders'
    expect(page).to have_css '.features', text: 'Custom Orders'
    expect(page).to have_css '.features', text: 'Group Orders'
  end
end
