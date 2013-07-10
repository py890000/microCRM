require 'spec_helper'

describe "permissions/show" do
  before(:each) do
    @permission = assign(:permission, stub_model(Permission,
      :name => "Name",
      :subject_class => "Subject Class",
      :action => "Action",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Subject Class/)
    rendered.should match(/Action/)
    rendered.should match(/MyText/)
  end
end
