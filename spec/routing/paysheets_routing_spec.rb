require "rails_helper"

RSpec.describe PaysheetsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/paysheets").to route_to("paysheets#index")
    end


    it "routes to #show" do
      expect(:get => "/paysheets/1").to route_to("paysheets#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/paysheets").to route_to("paysheets#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/paysheets/1").to route_to("paysheets#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/paysheets/1").to route_to("paysheets#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/paysheets/1").to route_to("paysheets#destroy", :id => "1")
    end

  end
end
