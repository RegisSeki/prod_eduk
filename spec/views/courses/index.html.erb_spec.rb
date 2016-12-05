require 'rails_helper'

RSpec.describe "courses/index", type: :view do
  before(:each) do
    assign(:courses, [
      Course.create!(
        :course_id => 2,
        :name => "Name",
        :parts => 3,
        :livestream_link => "Livestream Link",
        :amazon_link => "Amazon Link",
        :studio => "Studio",
        :author => nil
      ),
      Course.create!(
        :course_id => 2,
        :name => "Name",
        :parts => 3,
        :livestream_link => "Livestream Link",
        :amazon_link => "Amazon Link",
        :studio => "Studio",
        :author => nil
      )
    ])
  end

  it "renders a list of courses" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Livestream Link".to_s, :count => 2
    assert_select "tr>td", :text => "Amazon Link".to_s, :count => 2
    assert_select "tr>td", :text => "Studio".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
