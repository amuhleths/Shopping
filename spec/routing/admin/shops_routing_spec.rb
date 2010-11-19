require "spec_helper"

describe Admin::ShopsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/admin_shops" }.should route_to(:controller => "admin_shops", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/admin_shops/new" }.should route_to(:controller => "admin_shops", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/admin_shops/1" }.should route_to(:controller => "admin_shops", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/admin_shops/1/edit" }.should route_to(:controller => "admin_shops", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/admin_shops" }.should route_to(:controller => "admin_shops", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/admin_shops/1" }.should route_to(:controller => "admin_shops", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/admin_shops/1" }.should route_to(:controller => "admin_shops", :action => "destroy", :id => "1")
    end

  end
end
