require 'spec_helper'

describe "admin_shops/show.html.erb" do
  before(:each) do
    @shop = assign(:shop, stub_model(Admin::Shop,
      :name => "Name",
      :address => "Address",
      :telephone => "Telephone",
      :logo_url => "Logo Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Address/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Telephone/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Logo Url/)
  end
end
