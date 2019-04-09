require "rails_helper"

RSpec.describe CustomerContactsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/customer_contacts").to route_to("customer_contacts#index")
    end

    it "routes to #show" do
      expect(:get => "/customer_contacts/1").to route_to("customer_contacts#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/customer_contacts").to route_to("customer_contacts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/customer_contacts/1").to route_to("customer_contacts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/customer_contacts/1").to route_to("customer_contacts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/customer_contacts/1").to route_to("customer_contacts#destroy", :id => "1")
    end
  end
end
