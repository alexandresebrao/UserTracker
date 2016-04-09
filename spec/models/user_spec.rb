# spec/models/page.rb
require 'rails_helper'

describe User do
  it "has a valid page" do
    expect(FactoryGirl.create(:user)).to be_valid
  end
  it "can't have a invalid email" do
    expect(FactoryGirl.build(:user, userid: "1234", email: "teste.com")).to_not be_valid
  end
  it "can have a blan email" do
    expect(FactoryGirl.build(:user, email: nil)).to be_valid
  end
  it "can't have a blank userid" do
    expect(FactoryGirl.build(:user, userid: nil, email: "a@a.com")).to_not be_valid
  end
end
