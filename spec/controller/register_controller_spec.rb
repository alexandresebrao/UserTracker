# spec/models/page.rb
require 'rails_helper'

describe RegisterController, :type => :controller  do

  describe "GET #create" do
    it "has to succed because it has userid and page" do
      get :create, userid: "12345", page: "1234"
      expect(response).to be_success
    end
  #I can't test missing values because it will return a route error


  describe "GET #show" do
    it "has to be a success cause it's the list of users" do
      get :show
      expect(response).to be_success
    end
  end


  describe "POST #update" do
    it "has to be a success cause it's the list of users" do
      user = FactoryGirl.create(:user)
      post :update, userid: user.userid, email: "teste@teste1.gmail"
      user_update = User.find(user)
      expect(user_update.email).to eq("teste@teste1.gmail")
    end
  end
 end
end
