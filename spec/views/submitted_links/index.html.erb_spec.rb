require 'spec_helper'

describe "submitted_links/index.html.erb" do
  before(:each) do
    assign(:submitted_links, [
      stub_model(SubmittedLink,
        :url => "Url",
        :title => "Title",
        :description => "MyText",
        :thumbnail_url => "Thumbnail Url",
        :user => nil
      ),
      stub_model(SubmittedLink,
        :url => "Url",
        :title => "Title",
        :description => "MyText",
        :thumbnail_url => "Thumbnail Url",
        :user => nil
      )
    ])
  end

  it "renders a list of submitted_links" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Thumbnail Url".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
