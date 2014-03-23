require 'spec_helper'

describe "claims/new" do
  before(:each) do
    assign(:claim, stub_model(Claim,
      :title => "MyString",
      :claim_id => "MyString",
      :ytube_id => "MyString",
      :producer => "MyString"
    ).as_new_record)
  end

  it "renders new claim form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", claims_path, "post" do
      assert_select "input#claim_title[name=?]", "claim[title]"
      assert_select "input#claim_claim_id[name=?]", "claim[claim_id]"
      assert_select "input#claim_ytube_id[name=?]", "claim[ytube_id]"
      assert_select "input#claim_producer[name=?]", "claim[producer]"
    end
  end
end
