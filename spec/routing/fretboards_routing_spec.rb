require "spec_helper"

describe FretboardsController do
  describe "routing" do

    it "routes to #index" do
      get("/fretboards").should route_to("fretboards#index")
    end

    it "routes to #new" do
      get("/fretboards/new").should route_to("fretboards#new")
    end

    it "routes to #show" do
      get("/fretboards/1").should route_to("fretboards#show", :id => "1")
    end

    it "routes to #edit" do
      get("/fretboards/1/edit").should route_to("fretboards#edit", :id => "1")
    end

    it "routes to #create" do
      post("/fretboards").should route_to("fretboards#create")
    end

    it "routes to #update" do
      put("/fretboards/1").should route_to("fretboards#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/fretboards/1").should route_to("fretboards#destroy", :id => "1")
    end

  end
end
