require "spec_helper"

describe SubmittedLinksController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/submitted_links" }.should route_to(:controller => "submitted_links", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/submitted_links/new" }.should route_to(:controller => "submitted_links", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/submitted_links/1" }.should route_to(:controller => "submitted_links", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/submitted_links/1/edit" }.should route_to(:controller => "submitted_links", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/submitted_links" }.should route_to(:controller => "submitted_links", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/submitted_links/1" }.should route_to(:controller => "submitted_links", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/submitted_links/1" }.should route_to(:controller => "submitted_links", :action => "destroy", :id => "1")
    end

  end
end
