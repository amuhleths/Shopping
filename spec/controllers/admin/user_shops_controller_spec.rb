require 'spec_helper'

describe Admin::UserShopsController do

  def mock_user_shop(stubs={})
    (@mock_user_shop ||= mock_model(Admin::UserShop).as_null_object).tap do |user_shop|
      user_shop.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all admin_user_shops as @admin_user_shops" do
      Admin::UserShop.stub(:all) { [mock_user_shop] }
      get :index
      assigns(:admin_user_shops).should eq([mock_user_shop])
    end
  end

  describe "GET show" do
    it "assigns the requested user_shop as @user_shop" do
      Admin::UserShop.stub(:find).with("37") { mock_user_shop }
      get :show, :id => "37"
      assigns(:user_shop).should be(mock_user_shop)
    end
  end

  describe "GET new" do
    it "assigns a new user_shop as @user_shop" do
      Admin::UserShop.stub(:new) { mock_user_shop }
      get :new
      assigns(:user_shop).should be(mock_user_shop)
    end
  end

  describe "GET edit" do
    it "assigns the requested user_shop as @user_shop" do
      Admin::UserShop.stub(:find).with("37") { mock_user_shop }
      get :edit, :id => "37"
      assigns(:user_shop).should be(mock_user_shop)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created user_shop as @user_shop" do
        Admin::UserShop.stub(:new).with({'these' => 'params'}) { mock_user_shop(:save => true) }
        post :create, :user_shop => {'these' => 'params'}
        assigns(:user_shop).should be(mock_user_shop)
      end

      it "redirects to the created user_shop" do
        Admin::UserShop.stub(:new) { mock_user_shop(:save => true) }
        post :create, :user_shop => {}
        response.should redirect_to(admin_user_shop_url(mock_user_shop))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved user_shop as @user_shop" do
        Admin::UserShop.stub(:new).with({'these' => 'params'}) { mock_user_shop(:save => false) }
        post :create, :user_shop => {'these' => 'params'}
        assigns(:user_shop).should be(mock_user_shop)
      end

      it "re-renders the 'new' template" do
        Admin::UserShop.stub(:new) { mock_user_shop(:save => false) }
        post :create, :user_shop => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested user_shop" do
        Admin::UserShop.should_receive(:find).with("37") { mock_user_shop }
        mock_admin_user_shop.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :user_shop => {'these' => 'params'}
      end

      it "assigns the requested user_shop as @user_shop" do
        Admin::UserShop.stub(:find) { mock_user_shop(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:user_shop).should be(mock_user_shop)
      end

      it "redirects to the user_shop" do
        Admin::UserShop.stub(:find) { mock_user_shop(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(admin_user_shop_url(mock_user_shop))
      end
    end

    describe "with invalid params" do
      it "assigns the user_shop as @user_shop" do
        Admin::UserShop.stub(:find) { mock_user_shop(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:user_shop).should be(mock_user_shop)
      end

      it "re-renders the 'edit' template" do
        Admin::UserShop.stub(:find) { mock_user_shop(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested user_shop" do
      Admin::UserShop.should_receive(:find).with("37") { mock_user_shop }
      mock_admin_user_shop.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the admin_user_shops list" do
      Admin::UserShop.stub(:find) { mock_user_shop }
      delete :destroy, :id => "1"
      response.should redirect_to(admin_user_shops_url)
    end
  end

end
