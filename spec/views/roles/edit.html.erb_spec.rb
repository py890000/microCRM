require 'spec_helper'

describe "roles/edit" do
  before(:each) do
    @role = assign(:role, stub_model(Role,
      :name => "MyString",
      :permission => "MyString",
      :desc => "MyString",
      :state => 1
    ))
  end

  it "renders the edit role form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", role_path(@role), "post" do
      assert_select "input#role_name[name=?]", "role[name]"
      assert_select "input#role_permission[name=?]", "role[permission]"
      assert_select "input#role_desc[name=?]", "role[desc]"
      assert_select "input#role_state[name=?]", "role[state]"
    end
  end
end
