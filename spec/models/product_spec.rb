require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    it "validates n with a name" do
    @category = Category.new(name: "fish")
    @product = Product.new(name: "salmon", price: 999, quantity: 1, category: @category)
      expect(@product).to be_valid
    end
    it "throws an error when name is nil" do
      @category = Category.new(name: "fish")
      @product = Product.new(name: nil, price: 999, quantity: 1, category: @category)
      expect(@product).to be_invalid
      expect(@product.errors.full_messages).to contain_exactly("Name can't be blank")
    end
    it "throws an error when price is nil" do
      @category = Category.new(name: "fish")
      @product = Product.new(name: "salmon", price: nil, quantity: 1, category: @category)
      expect(@product).to be_invalid
      expect(@product.errors.full_messages).to contain_exactly("Price can't be blank", "Price cents is not a number", "Price is not a number")

    end
    it "throws an error when quantity is nil." do
      @category = Category.new(name: "fish")
      @product = Product.new(name: "salmon", price: 999, quantity: nil, category: @category)
      expect(@product).to be_invalid
      expect(@product.errors.full_messages).to contain_exactly("Quantity can't be blank") 
    end
    it "throws an error when category is nil" do
      @category = Category.new(name: "fish")
      @product = Product.new(name: "salmon", price: 999, quantity: 1, category: nil)
      expect(@product).to be_invalid
      expect(@product.errors.full_messages).to contain_exactly("Category can't be blank")
    end
  end
end
