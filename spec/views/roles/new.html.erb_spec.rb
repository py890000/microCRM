require 'spec_helper'

describe "roles/new" do
  before(:each) do
    assign(:role, stub_model(Role,
      :name => "MyString",
      :permission => "MyString",
      :desc => "MyString",
      :state => 1
    ).as_new_record)
  end

  it "renders new role form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", roles_path, "post" do
      assert_select "input#role_name[name=?]", "role[name]"
      assert_select "input#role_permission[name=?]", "role[permission]"
      assert_select "input#role_desc[name=?]", "role[desc]"
      assert_select "input#role_state[name=?]", "role[state]"
    end
  end
end
