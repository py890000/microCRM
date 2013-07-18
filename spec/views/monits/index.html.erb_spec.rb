require 'spec_helper'

describe "monits/index" do
  before(:each) do
    assign(:monits, [
      stub_model(Monit,
        :name => "Name",
        :script => "Script",
        :desc => "Desc",
        :state => 1
      ),
      stub_model(Monit,
        :name => "Name",
        :script => "Script",
        :desc => "Desc",
        :state => 1
      )
    ])
  end

  it "renders a list of monits" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Script".to_s, :count => 2
    assert_select "tr>td", :text => "Desc".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
