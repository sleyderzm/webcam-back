require 'rails_helper'

RSpec.describe "Deductions", type: :request do
  describe "GET /deductions" do
    it "works! (now write some real specs)" do
      get deductions_path
      expect(response).to have_http_status(200)
    end
  end
end
