require 'rails_helper'

RSpec.describe HomeController, type: :controller do

  describe "GET #admin" do
    it "returns http success" do
      get :admin
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #senior" do
    it "returns http success" do
      get :senior
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #credits" do
    it "returns http success" do
      get :credits
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #info" do
    it "returns http success" do
      get :info
      expect(response).to have_http_status(:success)
    end
  end

end
