require 'spec_helper'

describe "claims/show" do
  before(:each) do
    @claim = assign(:claim, stub_model(Claim,
      :title => "Title",
      :claim_id => "Claim",
      :ytube_id => "Ytube",
      :producer => "Producer"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Claim/)
    rendered.should match(/Ytube/)
    rendered.should match(/Producer/)
  end
end
