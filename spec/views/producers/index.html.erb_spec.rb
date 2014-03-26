require 'spec_helper'

describe "producers/index" do
  before(:each) do
    assign(:producers, [
      stub_model(Producer,
        :name => "Name",
        :email => "Email",
        :address => "Address",
        :phone => "Phone",
        :twitter => "Twitter",
        :collab => false
      ),
      stub_model(Producer,
        :name => "Name",
        :email => "Email",
        :address => "Address",
        :phone => "Phone",
        :twitter => "Twitter",
        :collab => false
      )
    ])
  end

  it "renders a list of producers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Twitter".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
