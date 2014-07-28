require 'rails_helper'

feature 'User orders personal menu item' do
  scenario 'by completing out a form on the personal menu item page' do
    menu_item = create(:menu_item)
    menu_item.ingredients = create_list(:ingredients, 5)
    menu_item.options.each do |option|
      option.is_addon = false
      option.save
    end

    last_option = menu_item.options.last
    last_option.is_addon = true
    last_option.save
    visit root_path
    click_link 'Personal Menu'
    within("[data-id='#{menu_item.id}']") do
      click_link menu_item.name
    end

    select '1', from: "Quantity"
    uncheck("#{menu_item.ingredient.first.name.capitalize}")
    check("#{menu_item.ingredient.last.name.capitalize}")
    click_button "Add to Order"


    expect(page).to have_content menu_item.name
    expect(page).to have_text("#{order_item.quantity} #{menu_item.name}s added to cart")
  end
end
