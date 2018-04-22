require 'rails_helper'

RSpec.describe "AdminDeductions", type: :request do
  describe "GET /admin_deductions" do
    it "works! (now write some real specs)" do
      get admin_deductions_path
      expect(response).to have_http_status(200)
    end
  end
end
