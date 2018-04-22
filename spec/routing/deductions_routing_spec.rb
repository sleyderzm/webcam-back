require "rails_helper"

RSpec.describe DeductionsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/deductions").to route_to("deductions#index")
    end


    it "routes to #show" do
      expect(:get => "/deductions/1").to route_to("deductions#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/deductions").to route_to("deductions#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/deductions/1").to route_to("deductions#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/deductions/1").to route_to("deductions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/deductions/1").to route_to("deductions#destroy", :id => "1")
    end

  end
end
