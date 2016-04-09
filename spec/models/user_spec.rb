# spec/models/page.rb
require 'rails_helper'

describe User do
  it "has a valid page" do
    FactoryGirl.create(:user).should be_valid
  end
  it "can't have a invalid email" do
    FactoryGirl.build(:user, userid: "1234", email: "teste.com").should_not be_valid
  end
  it "can have a blan email" do
    FactoryGirl.build(:user, email: nil).should be_valid
  end
  it "can't have a blank userid" do
    FactoryGirl.build(:user, userid: nil, email: "a@a.com").should_not be_valid
  end
end
