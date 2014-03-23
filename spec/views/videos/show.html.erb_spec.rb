require 'spec_helper'

describe "videos/show" do
  before(:each) do
    @video = assign(:video, stub_model(Video,
      :title => "Title",
      :ytube_id => "Ytube",
      :views => 1,
      :revenue => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Ytube/)
    rendered.should match(/1/)
    rendered.should match(/9.99/)
  end
end
