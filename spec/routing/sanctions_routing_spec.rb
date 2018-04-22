require "rails_helper"

RSpec.describe SanctionsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/sanctions").to route_to("sanctions#index")
    end


    it "routes to #show" do
      expect(:get => "/sanctions/1").to route_to("sanctions#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/sanctions").to route_to("sanctions#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/sanctions/1").to route_to("sanctions#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/sanctions/1").to route_to("sanctions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/sanctions/1").to route_to("sanctions#destroy", :id => "1")
    end

  end
end
