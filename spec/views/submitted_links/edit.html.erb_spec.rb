require 'spec_helper'

describe "submitted_links/edit.html.erb" do
  before(:each) do
    @submitted_link = assign(:submitted_link, stub_model(SubmittedLink,
      :url => "MyString",
      :title => "MyString",
      :description => "MyText",
      :thumbnail_url => "MyString",
      :user => nil
    ))
  end

  it "renders the edit submitted_link form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => submitted_link_path(@submitted_link), :method => "post" do
      assert_select "input#submitted_link_url", :name => "submitted_link[url]"
      assert_select "input#submitted_link_title", :name => "submitted_link[title]"
      assert_select "textarea#submitted_link_description", :name => "submitted_link[description]"
      assert_select "input#submitted_link_thumbnail_url", :name => "submitted_link[thumbnail_url]"
      assert_select "input#submitted_link_user", :name => "submitted_link[user]"
    end
  end
end
