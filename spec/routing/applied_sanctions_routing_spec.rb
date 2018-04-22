require "rails_helper"

RSpec.describe AppliedSanctionsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/applied_sanctions").to route_to("applied_sanctions#index")
    end


    it "routes to #show" do
      expect(:get => "/applied_sanctions/1").to route_to("applied_sanctions#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/applied_sanctions").to route_to("applied_sanctions#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/applied_sanctions/1").to route_to("applied_sanctions#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/applied_sanctions/1").to route_to("applied_sanctions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/applied_sanctions/1").to route_to("applied_sanctions#destroy", :id => "1")
    end

  end
end
