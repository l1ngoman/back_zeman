require 'rails_helper'

RSpec.describe "CustomerLocations", type: :request do
  describe "GET /customer_locations" do
    it "works! (now write some real specs)" do
      get customer_locations_path
      expect(response).to have_http_status(200)
    end
  end
end
