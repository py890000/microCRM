require 'spec_helper'

describe "permissions/edit" do
  before(:each) do
    @permission = assign(:permission, stub_model(Permission,
      :name => "MyString",
      :subject_class => "MyString",
      :action => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit permission form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", permission_path(@permission), "post" do
      assert_select "input#permission_name[name=?]", "permission[name]"
      assert_select "input#permission_subject_class[name=?]", "permission[subject_class]"
      assert_select "input#permission_action[name=?]", "permission[action]"
      assert_select "textarea#permission_description[name=?]", "permission[description]"
    end
  end
end
