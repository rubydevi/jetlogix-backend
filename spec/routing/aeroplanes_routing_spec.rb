require "rails_helper"

RSpec.describe AeroplanesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/aeroplanes").to route_to("aeroplanes#index")
    end

    it "routes to #show" do
      expect(get: "/aeroplanes/1").to route_to("aeroplanes#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/aeroplanes").to route_to("aeroplanes#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/aeroplanes/1").to route_to("aeroplanes#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/aeroplanes/1").to route_to("aeroplanes#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/aeroplanes/1").to route_to("aeroplanes#destroy", id: "1")
    end
  end
end
