require 'rails_helper'

RSpec.describe "Sanctions", type: :request do
  describe "GET /sanctions" do
    it "works! (now write some real specs)" do
      get sanctions_path
      expect(response).to have_http_status(200)
    end
  end
end
