require 'rails_helper'

RSpec.feature "add item to cart", type: :feature do

  before :each do
    @category = Category.create! name: 'Apparel'

    1.times do |n|
      @category.products.create!(
        name:  Faker::Hipster.sentence(3),
        description: Faker::Hipster.paragraph(4),
        image: open_asset('apparel1.jpg'),
        quantity: 3,
        price: 64.99
      )
    end
  end

  scenario "select a product, get redirected to details page" do
    visit root_path
    find(:button, 'Add').click
    expect(page).to have_content('My Cart (1)')
  end
end