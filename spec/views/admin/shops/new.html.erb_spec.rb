require 'spec_helper'

describe "admin_shops/new.html.erb" do
  before(:each) do
    assign(:shop, stub_model(Admin::Shop,
      :name => "MyString",
      :address => "MyString",
      :telephone => "MyString",
      :logo_url => "MyString"
    ).as_new_record)
  end

  it "renders new shop form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => admin_shops_path, :method => "post" do
      assert_select "input#shop_name", :name => "shop[name]"
      assert_select "input#shop_address", :name => "shop[address]"
      assert_select "input#shop_telephone", :name => "shop[telephone]"
      assert_select "input#shop_logo_url", :name => "shop[logo_url]"
    end
  end
end
