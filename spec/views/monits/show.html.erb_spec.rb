require 'spec_helper'

describe "monits/show" do
  before(:each) do
    @monit = assign(:monit, stub_model(Monit,
      :name => "Name",
      :script => "Script",
      :desc => "Desc",
      :state => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Script/)
    rendered.should match(/Desc/)
    rendered.should match(/1/)
  end
end
