require "rails_helper"

RSpec.describe VendorLocationsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/vendor_locations").to route_to("vendor_locations#index")
    end

    it "routes to #show" do
      expect(:get => "/vendor_locations/1").to route_to("vendor_locations#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/vendor_locations").to route_to("vendor_locations#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/vendor_locations/1").to route_to("vendor_locations#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/vendor_locations/1").to route_to("vendor_locations#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/vendor_locations/1").to route_to("vendor_locations#destroy", :id => "1")
    end
  end
end
