require 'spec_helper'

describe "videos/new" do
  before(:each) do
    assign(:video, stub_model(Video,
      :title => "MyString",
      :ytube_id => "MyString",
      :views => 1,
      :revenue => "9.99"
    ).as_new_record)
  end

  it "renders new video form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", videos_path, "post" do
      assert_select "input#video_title[name=?]", "video[title]"
      assert_select "input#video_ytube_id[name=?]", "video[ytube_id]"
      assert_select "input#video_views[name=?]", "video[views]"
      assert_select "input#video_revenue[name=?]", "video[revenue]"
    end
  end
end
