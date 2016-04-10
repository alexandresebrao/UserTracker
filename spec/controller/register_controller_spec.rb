# spec/models/page.rb
require 'rails_helper'

describe RegisterController, :type => :controller  do

  describe "GET #create" do
    it "has accessed properly and created the user" do
      get :create, userid: "12345", page: "Homepage"
      expect(response).to be_success
    end
  #I can't test missing values because it will return a route error


  describe "GET #show" do
    it "has accessed properly the list of users" do
      get :show
      expect(response).to be_success
    end
  end


  describe "POST #update" do
    it "has changed the user email properly" do
      user = FactoryGirl.create(:user)
      post :update, userid: user.userid, email: "teste@teste1.gmail"
      user.reload
      expect(user.email).to eq("teste@teste1.gmail")
    end
  end
 end
end
