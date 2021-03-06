require 'rails_helper'

RSpec.feature "product details", type: :feature, js: true do

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
    find('a h4').click 
    expect(page).to have_css 'article.product-detail', count: 1
  end
end