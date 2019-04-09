require "rails_helper"

RSpec.describe CustomerLocationsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/customer_locations").to route_to("customer_locations#index")
    end

    it "routes to #show" do
      expect(:get => "/customer_locations/1").to route_to("customer_locations#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/customer_locations").to route_to("customer_locations#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/customer_locations/1").to route_to("customer_locations#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/customer_locations/1").to route_to("customer_locations#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/customer_locations/1").to route_to("customer_locations#destroy", :id => "1")
    end
  end
end
