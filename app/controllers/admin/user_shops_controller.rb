class Admin::UserShopsController < ApplicationController
  
  layout 'admin'

  has_scope :name_like, :as => :name
  
  # GET /admin/user_shops
  # GET /admin/user_shops.xml
  def index
    @user_shops = apply_scopes(UserShop).paginate :page => params[:page], :per_page => params[:per_page]
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @user_shops }
    end
  end

  # GET /admin/user_shops/1
  # GET /admin/user_shops/1.xml
  def show
    @user_shop = UserShop.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user_shop }
    end
  end

  # GET /admin/user_shops/new
  # GET /admin/user_shops/new.xml
  def new
    @user_shop = UserShop.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @user_shop }
    end
  end

  # GET /admin/user_shops/1/edit
  def edit
    @user_shop = UserShop.find(params[:id])
  end

  # POST /admin/user_shops
  # POST /admin/user_shops.xml
  def create
    @user_shop = UserShop.new(params[:user_shop])

    respond_to do |format|
      if @user_shop.save
        format.html { redirect_to([:admin, @user_shop], :notice => 'User shop was successfully created.') }
        format.xml  { render :xml => @user_shop, :status => :created, :location => [:admin, @user_shop] }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @user_shop.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /admin/user_shops/1
  # PUT /admin/user_shops/1.xml
  def update
    @user_shop = UserShop.find(params[:id])

    respond_to do |format|
      if @user_shop.update_attributes(params[:user_shop])
        format.html { redirect_to([:admin, @user_shop], :notice => 'User shop was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => [:admin, @user_shop].errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/user_shops/1
  # DELETE /admin/user_shops/1.xml
  def destroy
    @user_shop = UserShop.find(params[:id])
    @user_shop.destroy

    respond_to do |format|
      format.html { redirect_to(admin_user_shops_url) }
      format.xml  { head :ok }
    end
  end
end
