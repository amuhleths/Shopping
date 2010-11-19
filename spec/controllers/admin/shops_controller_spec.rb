require 'spec_helper'

describe Admin::ShopsController do

  def mock_shop(stubs={})
    (@mock_shop ||= mock_model(Admin::Shop).as_null_object).tap do |shop|
      shop.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all admin_shops as @admin_shops" do
      Admin::Shop.stub(:all) { [mock_shop] }
      get :index
      assigns(:admin_shops).should eq([mock_shop])
    end
  end

  describe "GET show" do
    it "assigns the requested shop as @shop" do
      Admin::Shop.stub(:find).with("37") { mock_shop }
      get :show, :id => "37"
      assigns(:shop).should be(mock_shop)
    end
  end

  describe "GET new" do
    it "assigns a new shop as @shop" do
      Admin::Shop.stub(:new) { mock_shop }
      get :new
      assigns(:shop).should be(mock_shop)
    end
  end

  describe "GET edit" do
    it "assigns the requested shop as @shop" do
      Admin::Shop.stub(:find).with("37") { mock_shop }
      get :edit, :id => "37"
      assigns(:shop).should be(mock_shop)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created shop as @shop" do
        Admin::Shop.stub(:new).with({'these' => 'params'}) { mock_shop(:save => true) }
        post :create, :shop => {'these' => 'params'}
        assigns(:shop).should be(mock_shop)
      end

      it "redirects to the created shop" do
        Admin::Shop.stub(:new) { mock_shop(:save => true) }
        post :create, :shop => {}
        response.should redirect_to(admin_shop_url(mock_shop))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved shop as @shop" do
        Admin::Shop.stub(:new).with({'these' => 'params'}) { mock_shop(:save => false) }
        post :create, :shop => {'these' => 'params'}
        assigns(:shop).should be(mock_shop)
      end

      it "re-renders the 'new' template" do
        Admin::Shop.stub(:new) { mock_shop(:save => false) }
        post :create, :shop => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested shop" do
        Admin::Shop.should_receive(:find).with("37") { mock_shop }
        mock_admin_shop.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :shop => {'these' => 'params'}
      end

      it "assigns the requested shop as @shop" do
        Admin::Shop.stub(:find) { mock_shop(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:shop).should be(mock_shop)
      end

      it "redirects to the shop" do
        Admin::Shop.stub(:find) { mock_shop(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(admin_shop_url(mock_shop))
      end
    end

    describe "with invalid params" do
      it "assigns the shop as @shop" do
        Admin::Shop.stub(:find) { mock_shop(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:shop).should be(mock_shop)
      end

      it "re-renders the 'edit' template" do
        Admin::Shop.stub(:find) { mock_shop(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested shop" do
      Admin::Shop.should_receive(:find).with("37") { mock_shop }
      mock_admin_shop.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the admin_shops list" do
      Admin::Shop.stub(:find) { mock_shop }
      delete :destroy, :id => "1"
      response.should redirect_to(admin_shops_url)
    end
  end

end
