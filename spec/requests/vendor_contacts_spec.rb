require 'rails_helper'

RSpec.describe "VendorContacts", type: :request do
  describe "GET /vendor_contacts" do
    it "works! (now write some real specs)" do
      get vendor_contacts_path
      expect(response).to have_http_status(200)
    end
  end
end
