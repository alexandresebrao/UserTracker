# spec/models/page.rb
require 'rails_helper'

describe Page do
  it "has a valid page" do
    FactoryGirl.create(:page).should be_valid
  end
  it "can't be blank" do
    FactoryGirl.build(:page, page: nil).should_not be_valid
  end
end
