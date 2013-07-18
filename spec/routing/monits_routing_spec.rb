require "spec_helper"

describe MonitsController do
  describe "routing" do

    it "routes to #index" do
      get("/monits").should route_to("monits#index")
    end

    it "routes to #new" do
      get("/monits/new").should route_to("monits#new")
    end

    it "routes to #show" do
      get("/monits/1").should route_to("monits#show", :id => "1")
    end

    it "routes to #edit" do
      get("/monits/1/edit").should route_to("monits#edit", :id => "1")
    end

    it "routes to #create" do
      post("/monits").should route_to("monits#create")
    end

    it "routes to #update" do
      put("/monits/1").should route_to("monits#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/monits/1").should route_to("monits#destroy", :id => "1")
    end

  end
end
