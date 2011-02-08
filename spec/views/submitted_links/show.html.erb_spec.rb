require 'spec_helper'

describe "submitted_links/show.html.erb" do
  before(:each) do
    @submitted_link = assign(:submitted_link, stub_model(SubmittedLink,
      :url => "Url",
      :title => "Title",
      :description => "MyText",
      :thumbnail_url => "Thumbnail Url",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Url/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Thumbnail Url/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
