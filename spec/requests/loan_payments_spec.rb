require 'rails_helper'

RSpec.describe "LoanPayments", type: :request do
  describe "GET /loan_payments" do
    it "works! (now write some real specs)" do
      get loan_payments_path
      expect(response).to have_http_status(200)
    end
  end
end
