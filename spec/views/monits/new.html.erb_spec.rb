require 'spec_helper'

describe "monits/new" do
  before(:each) do
    assign(:monit, stub_model(Monit,
      :name => "MyString",
      :script => "MyString",
      :desc => "MyString",
      :state => 1
    ).as_new_record)
  end

  it "renders new monit form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", monits_path, "post" do
      assert_select "input#monit_name[name=?]", "monit[name]"
      assert_select "input#monit_script[name=?]", "monit[script]"
      assert_select "input#monit_desc[name=?]", "monit[desc]"
      assert_select "input#monit_state[name=?]", "monit[state]"
    end
  end
end
