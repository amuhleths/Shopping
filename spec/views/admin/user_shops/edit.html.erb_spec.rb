require 'spec_helper'

describe "admin_user_shops/edit.html.erb" do
  before(:each) do
    @user_shop = assign(:user_shop, stub_model(Admin::UserShop,
      :new_record? => false,
      :name => "MyString",
      :email => "MyString",
      :password => "MyString",
      :password_confirmation => "MyString"
    ))
  end

  it "renders the edit user_shop form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => user_shop_path(@user_shop), :method => "post" do
      assert_select "input#user_shop_name", :name => "user_shop[name]"
      assert_select "input#user_shop_email", :name => "user_shop[email]"
      assert_select "input#user_shop_password", :name => "user_shop[password]"
      assert_select "input#user_shop_password_confirmation", :name => "user_shop[password_confirmation]"
    end
  end
end
