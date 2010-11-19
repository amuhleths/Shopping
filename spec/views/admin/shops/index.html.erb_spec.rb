require 'spec_helper'

describe "admin_shops/index.html.erb" do
  before(:each) do
    assign(:admin_shops, [
      stub_model(Admin::Shop,
        :name => "Name",
        :address => "Address",
        :telephone => "Telephone",
        :logo_url => "Logo Url"
      ),
      stub_model(Admin::Shop,
        :name => "Name",
        :address => "Address",
        :telephone => "Telephone",
        :logo_url => "Logo Url"
      )
    ])
  end

  it "renders a list of admin_shops" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Telephone".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Logo Url".to_s, :count => 2
  end
end
