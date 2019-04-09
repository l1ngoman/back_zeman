require "rails_helper"

RSpec.describe CustomerAccountsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/customer_accounts").to route_to("customer_accounts#index")
    end

    it "routes to #show" do
      expect(:get => "/customer_accounts/1").to route_to("customer_accounts#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/customer_accounts").to route_to("customer_accounts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/customer_accounts/1").to route_to("customer_accounts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/customer_accounts/1").to route_to("customer_accounts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/customer_accounts/1").to route_to("customer_accounts#destroy", :id => "1")
    end
  end
end
