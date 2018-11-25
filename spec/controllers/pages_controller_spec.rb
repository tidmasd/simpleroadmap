require 'rails_helper'

RSpec.describe PagesController, type: :controller do

  describe "GET #product" do
    it "returns http success" do
      get :product
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #pricing" do
    it "returns http success" do
      get :pricing
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #signin" do
    it "returns http success" do
      get :signin
      expect(response).to have_http_status(:success)
    end
  end

end
