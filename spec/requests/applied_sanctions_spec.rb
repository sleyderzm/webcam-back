require 'rails_helper'

RSpec.describe "AppliedSanctions", type: :request do
  describe "GET /applied_sanctions" do
    it "works! (now write some real specs)" do
      get applied_sanctions_path
      expect(response).to have_http_status(200)
    end
  end
end
