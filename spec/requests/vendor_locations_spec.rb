require 'rails_helper'

RSpec.describe "VendorLocations", type: :request do
  describe "GET /vendor_locations" do
    it "works! (now write some real specs)" do
      get vendor_locations_path
      expect(response).to have_http_status(200)
    end
  end
end
