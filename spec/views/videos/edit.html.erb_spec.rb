require 'spec_helper'

describe "videos/edit" do
  before(:each) do
    @video = assign(:video, stub_model(Video,
      :title => "MyString",
      :ytube_id => "MyString",
      :views => 1,
      :revenue => "9.99"
    ))
  end

  it "renders the edit video form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", video_path(@video), "post" do
      assert_select "input#video_title[name=?]", "video[title]"
      assert_select "input#video_ytube_id[name=?]", "video[ytube_id]"
      assert_select "input#video_views[name=?]", "video[views]"
      assert_select "input#video_revenue[name=?]", "video[revenue]"
    end
  end
end
