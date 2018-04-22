require 'rails_helper'

RSpec.describe "HeadQuartes", type: :request do
  describe "GET /head_quartes" do
    it "works! (now write some real specs)" do
      get head_quartes_path
      expect(response).to have_http_status(200)
    end
  end
end
