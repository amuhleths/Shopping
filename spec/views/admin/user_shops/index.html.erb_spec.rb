require 'spec_helper'

describe "admin_user_shops/index.html.erb" do
  before(:each) do
    assign(:admin_user_shops, [
      stub_model(Admin::UserShop,
        :name => "Name",
        :email => "Email",
        :password => "Password",
        :password_confirmation => "Password Confirmation"
      ),
      stub_model(Admin::UserShop,
        :name => "Name",
        :email => "Email",
        :password => "Password",
        :password_confirmation => "Password Confirmation"
      )
    ])
  end

  it "renders a list of admin_user_shops" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Password".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Password Confirmation".to_s, :count => 2
  end
end
