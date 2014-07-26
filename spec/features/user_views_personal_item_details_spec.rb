require 'rails_helper'

feature 'User views personal menu item details' do
  scenario 'by clicking on an item link on the personal menu page' do
    visit root_path
    click_link 'Personal Menu'

    click_link 'personal-item'

    expect(page).to have_css '.item-name'
    expect(page).to have_css '.item-price'
    expect(page).to have_css '.item-description'
    expect(page).to have_css '.item-ingredients'
  end
end
