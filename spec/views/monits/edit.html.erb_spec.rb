require 'spec_helper'

describe "monits/edit" do
  before(:each) do
    @monit = assign(:monit, stub_model(Monit,
      :name => "MyString",
      :script => "MyString",
      :desc => "MyString",
      :state => 1
    ))
  end

  it "renders the edit monit form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", monit_path(@monit), "post" do
      assert_select "input#monit_name[name=?]", "monit[name]"
      assert_select "input#monit_script[name=?]", "monit[script]"
      assert_select "input#monit_desc[name=?]", "monit[desc]"
      assert_select "input#monit_state[name=?]", "monit[state]"
    end
  end
end
