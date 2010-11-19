require 'spec_helper'

describe "admin_shops/edit.html.erb" do
  before(:each) do
    @shop = assign(:shop, stub_model(Admin::Shop,
      :new_record? => false,
      :name => "MyString",
      :address => "MyString",
      :telephone => "MyString",
      :logo_url => "MyString"
    ))
  end

  it "renders the edit shop form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => shop_path(@shop), :method => "post" do
      assert_select "input#shop_name", :name => "shop[name]"
      assert_select "input#shop_address", :name => "shop[address]"
      assert_select "input#shop_telephone", :name => "shop[telephone]"
      assert_select "input#shop_logo_url", :name => "shop[logo_url]"
    end
  end
end
