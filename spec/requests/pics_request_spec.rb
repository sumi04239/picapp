require 'rails_helper'

RSpec.describe "Pics", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/pics/index"
      expect(response).to have_http_status(:success)
    end
  end

end
