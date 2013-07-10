require 'spec_helper'

describe "permissions/index" do
  before(:each) do
    assign(:permissions, [
      stub_model(Permission,
        :name => "Name",
        :subject_class => "Subject Class",
        :action => "Action",
        :description => "MyText"
      ),
      stub_model(Permission,
        :name => "Name",
        :subject_class => "Subject Class",
        :action => "Action",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of permissions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Subject Class".to_s, :count => 2
    assert_select "tr>td", :text => "Action".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
