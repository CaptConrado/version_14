require 'spec_helper'

describe "producers/edit" do
  before(:each) do
    @producer = assign(:producer, stub_model(Producer,
      :name => "MyString",
      :email => "MyString",
      :address => "MyString",
      :phone => "MyString",
      :twitter => "MyString",
      :collab => false
    ))
  end

  it "renders the edit producer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", producer_path(@producer), "post" do
      assert_select "input#producer_name[name=?]", "producer[name]"
      assert_select "input#producer_email[name=?]", "producer[email]"
      assert_select "input#producer_address[name=?]", "producer[address]"
      assert_select "input#producer_phone[name=?]", "producer[phone]"
      assert_select "input#producer_twitter[name=?]", "producer[twitter]"
      assert_select "input#producer_collab[name=?]", "producer[collab]"
    end
  end
end
