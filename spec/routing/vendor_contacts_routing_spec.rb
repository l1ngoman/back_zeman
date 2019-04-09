require "rails_helper"

RSpec.describe VendorContactsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/vendor_contacts").to route_to("vendor_contacts#index")
    end

    it "routes to #show" do
      expect(:get => "/vendor_contacts/1").to route_to("vendor_contacts#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/vendor_contacts").to route_to("vendor_contacts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/vendor_contacts/1").to route_to("vendor_contacts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/vendor_contacts/1").to route_to("vendor_contacts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/vendor_contacts/1").to route_to("vendor_contacts#destroy", :id => "1")
    end
  end
end
