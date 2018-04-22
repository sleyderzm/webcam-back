require 'rails_helper'

RSpec.describe "Nicknames", type: :request do
  describe "GET /nicknames" do
    it "works! (now write some real specs)" do
      get nicknames_path
      expect(response).to have_http_status(200)
    end
  end
end
