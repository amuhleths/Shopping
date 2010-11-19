class Admin::ShopsController < ApplicationController

  layout 'admin'

  has_scope :name_like, :as => :name

  # GET /admin/shops
  # GET /admin/shops.xml
  def index
    @shops = apply_scopes(Shop).paginate :page => params[:page], :per_page => params[:per_page]
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @shops }
    end
  end

  # GET /admin/shops/1
  # GET /admin/shops/1.xml
  def show
    @shop = Shop.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @shop }
    end
  end

  # GET /admin/shops/new
  # GET /admin/shops/new.xml
  def new
    @shop = Shop.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @shop }
    end
  end

  # GET /admin/shops/1/edit
  def edit
    @shop = Shop.find(params[:id])
  end

  # POST /admin/shops
  # POST /admin/shops.xml
  def create
    @shop = Shop.new(params[:shop])

    respond_to do |format|
      if @shop.save
        format.html { redirect_to([:admin, @shop], :notice => 'Shop was successfully created.') }
        format.xml  { render :xml => @shop, :status => :created, :location => @shop }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @shop.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /admin/shops/1
  # PUT /admin/shops/1.xml
  def update
    @shop = Shop.find(params[:id])

    respond_to do |format|
      if @shop.update_attributes(params[:shop])
        format.html { redirect_to([:admin, @shop], :notice => 'Shop was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @shop.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/shops/1
  # DELETE /admin/shops/1.xml
  def destroy
    @shop = Shop.find(params[:id])
    @shop.destroy

    respond_to do |format|
      format.html { redirect_to(admin_shops_url) }
      format.xml  { head :ok }
    end
  end
end
