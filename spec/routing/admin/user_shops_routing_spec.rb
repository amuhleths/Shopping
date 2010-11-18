require "spec_helper"

describe Admin::UserShopsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/admin_user_shops" }.should route_to(:controller => "admin_user_shops", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/admin_user_shops/new" }.should route_to(:controller => "admin_user_shops", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/admin_user_shops/1" }.should route_to(:controller => "admin_user_shops", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/admin_user_shops/1/edit" }.should route_to(:controller => "admin_user_shops", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/admin_user_shops" }.should route_to(:controller => "admin_user_shops", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/admin_user_shops/1" }.should route_to(:controller => "admin_user_shops", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/admin_user_shops/1" }.should route_to(:controller => "admin_user_shops", :action => "destroy", :id => "1")
    end

  end
end
