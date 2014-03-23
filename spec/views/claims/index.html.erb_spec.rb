require 'spec_helper'

describe "claims/index" do
  before(:each) do
    assign(:claims, [
      stub_model(Claim,
        :title => "Title",
        :claim_id => "Claim",
        :ytube_id => "Ytube",
        :producer => "Producer"
      ),
      stub_model(Claim,
        :title => "Title",
        :claim_id => "Claim",
        :ytube_id => "Ytube",
        :producer => "Producer"
      )
    ])
  end

  it "renders a list of claims" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Claim".to_s, :count => 2
    assert_select "tr>td", :text => "Ytube".to_s, :count => 2
    assert_select "tr>td", :text => "Producer".to_s, :count => 2
  end
end
