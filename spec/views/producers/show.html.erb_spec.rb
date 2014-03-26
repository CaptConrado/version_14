require 'spec_helper'

describe "producers/show" do
  before(:each) do
    @producer = assign(:producer, stub_model(Producer,
      :name => "Name",
      :email => "Email",
      :address => "Address",
      :phone => "Phone",
      :twitter => "Twitter",
      :collab => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Email/)
    rendered.should match(/Address/)
    rendered.should match(/Phone/)
    rendered.should match(/Twitter/)
    rendered.should match(/false/)
  end
end
