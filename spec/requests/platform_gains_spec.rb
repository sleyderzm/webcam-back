require 'rails_helper'

RSpec.describe "PlatformGains", type: :request do
  describe "GET /platform_gains" do
    it "works! (now write some real specs)" do
      get platform_gains_path
      expect(response).to have_http_status(200)
    end
  end
end
