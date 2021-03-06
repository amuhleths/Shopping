require 'spec_helper'

describe "admin_users/edit.html.erb" do
  before(:each) do
    @user = assign(:user, stub_model(Admin::User,
      :new_record? => false
    ))
  end

  it "renders the edit user form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => user_path(@user), :method => "post" do
    end
  end
end
