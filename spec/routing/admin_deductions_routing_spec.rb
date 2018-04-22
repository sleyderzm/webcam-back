require "rails_helper"

RSpec.describe AdminDeductionsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/admin_deductions").to route_to("admin_deductions#index")
    end


    it "routes to #show" do
      expect(:get => "/admin_deductions/1").to route_to("admin_deductions#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/admin_deductions").to route_to("admin_deductions#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/admin_deductions/1").to route_to("admin_deductions#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/admin_deductions/1").to route_to("admin_deductions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/admin_deductions/1").to route_to("admin_deductions#destroy", :id => "1")
    end

  end
end
