require "rails_helper"

RSpec.describe PlatformGainsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/platform_gains").to route_to("platform_gains#index")
    end


    it "routes to #show" do
      expect(:get => "/platform_gains/1").to route_to("platform_gains#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/platform_gains").to route_to("platform_gains#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/platform_gains/1").to route_to("platform_gains#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/platform_gains/1").to route_to("platform_gains#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/platform_gains/1").to route_to("platform_gains#destroy", :id => "1")
    end

  end
end
