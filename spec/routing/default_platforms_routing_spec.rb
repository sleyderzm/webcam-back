require "rails_helper"

RSpec.describe DefaultPlatformsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/default_platforms").to route_to("default_platforms#index")
    end


    it "routes to #show" do
      expect(:get => "/default_platforms/1").to route_to("default_platforms#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/default_platforms").to route_to("default_platforms#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/default_platforms/1").to route_to("default_platforms#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/default_platforms/1").to route_to("default_platforms#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/default_platforms/1").to route_to("default_platforms#destroy", :id => "1")
    end

  end
end
