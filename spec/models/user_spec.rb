require 'rails_helper'

RSpec.describe User, type: :model do
  describe "Validations" do
    it "must be created with a password" do 
      @user = User.new(first_name: "Ben", last_name: "Vincent", email: "a@a.com", password: nil, password_confirmation: nil)
      expect(@user).to be_invalid
      expect(@user.errors.full_messages).to include("Password can't be blank")
    end
    it "is not valid when passwords don't match" do 
      @user = User.new(first_name: "Cat", last_name: "Catmen", email: "a@a.com", password: "kill", password_confirmation: "bill")
      expect(@user).to be_invalid
    end
  end
end
