# spec/models/page.rb
require 'rails_helper'

describe Page do
  it "has a valid page" do
    expect(FactoryGirl.create(:page)).to be_valid
  end
  it "can't be blank" do
    expect(FactoryGirl.build(:page, page: nil)).to_not be_valid
  end
end
