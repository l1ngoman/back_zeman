require 'rails_helper'

RSpec.describe "CustomerAccounts", type: :request do
  describe "GET /customer_accounts" do
    it "works! (now write some real specs)" do
      get customer_accounts_path
      expect(response).to have_http_status(200)
    end
  end
end
