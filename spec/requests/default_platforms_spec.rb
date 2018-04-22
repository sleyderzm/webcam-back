require 'rails_helper'

RSpec.describe "DefaultPlatforms", type: :request do
  describe "GET /default_platforms" do
    it "works! (now write some real specs)" do
      get default_platforms_path
      expect(response).to have_http_status(200)
    end
  end
end
