require "rails_helper"

RSpec.describe HeadQuartesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/head_quartes").to route_to("head_quartes#index")
    end


    it "routes to #show" do
      expect(:get => "/head_quartes/1").to route_to("head_quartes#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/head_quartes").to route_to("head_quartes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/head_quartes/1").to route_to("head_quartes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/head_quartes/1").to route_to("head_quartes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/head_quartes/1").to route_to("head_quartes#destroy", :id => "1")
    end

  end
end
