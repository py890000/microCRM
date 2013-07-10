require 'spec_helper'

describe "roles/show" do
  before(:each) do
    @role = assign(:role, stub_model(Role,
      :name => "Name",
      :permission => "Permission",
      :desc => "Desc",
      :state => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Permission/)
    rendered.should match(/Desc/)
    rendered.should match(/1/)
  end
end
