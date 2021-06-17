require 'rails_helper'

RSpec.describe "GroupParticipations", type: :request do
  describe "GET /group_participations" do
    it "works! (now write some real specs)" do
      get group_participations_path
      expect(response).to have_http_status(200)
    end
  end
end
