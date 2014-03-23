require 'spec_helper'

describe "videos/index" do
  before(:each) do
    assign(:videos, [
      stub_model(Video,
        :title => "Title",
        :ytube_id => "Ytube",
        :views => 1,
        :revenue => "9.99"
      ),
      stub_model(Video,
        :title => "Title",
        :ytube_id => "Ytube",
        :views => 1,
        :revenue => "9.99"
      )
    ])
  end

  it "renders a list of videos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Ytube".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
