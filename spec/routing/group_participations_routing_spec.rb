require "rails_helper"

RSpec.describe GroupParticipationsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/group_participations").to route_to("group_participations#index")
    end

    it "routes to #new" do
      expect(:get => "/group_participations/new").to route_to("group_participations#new")
    end

    it "routes to #show" do
      expect(:get => "/group_participations/1").to route_to("group_participations#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/group_participations/1/edit").to route_to("group_participations#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/group_participations").to route_to("group_participations#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/group_participations/1").to route_to("group_participations#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/group_participations/1").to route_to("group_participations#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/group_participations/1").to route_to("group_participations#destroy", :id => "1")
    end
  end
end
