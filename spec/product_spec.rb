require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    it "validates n with a name"
    @category = Category.new(name: "fish")
    @product = Product.new(name: "salmon", price: 999, quantity: 1, category: @category)
      expect(@product).to be_valid
    end
    it "throws an error when name is nil" do
      @category = Category.new(name: "fish")
      @product = Product.new(name: nil, price: 999, quantity: 1, category: @category)
      expect(@product).to be_invalid
      expect(@product.errors.full_messages).to contain_exactly("name cannot be nil")
    end
    it "throws an error when price is nil" do
      @category = Category.new(name: "fish")
      @product = Product.new(name: "salmon", price: nil, quantity: 1, category: @category)
      expect(@product).to be_invalid
      expect(@product.errors.full_messages).to contain_exactly("price cannot be nil")

    end
    it "throws an error when quantity is nil." do
      @category = Category.new(name: "fish")
      @product = Product.new(name: "salmon", price: 999, quantity: nil, category: @category)
      expect(@product).to be_invalid
      expect(@product.errors.full_messages).to contain_exactly("quantity cannot be nil") 
    end
    it "throws an error when category is nil" do
      @category = Category.new(name: "fish")
      @product = Product.new(name: "salmon", price: 999, quantity: 1, category: nil)
      expect(@product).to be_invalid
      expect(@product.errors.full_messages).to contain_exactly("category cannot be nil")
    end
  end
end

