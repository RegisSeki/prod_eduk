require 'rails_helper'

RSpec.describe "courses/edit", type: :view do
  before(:each) do
    @course = assign(:course, Course.create!(
      :course_id => 1,
      :name => "MyString",
      :parts => 1,
      :livestream_link => "MyString",
      :amazon_link => "MyString",
      :studio => "MyString",
      :author => nil
    ))
  end

  it "renders the edit course form" do
    render

    assert_select "form[action=?][method=?]", course_path(@course), "post" do

      assert_select "input#course_course_id[name=?]", "course[course_id]"

      assert_select "input#course_name[name=?]", "course[name]"

      assert_select "input#course_parts[name=?]", "course[parts]"

      assert_select "input#course_livestream_link[name=?]", "course[livestream_link]"

      assert_select "input#course_amazon_link[name=?]", "course[amazon_link]"

      assert_select "input#course_studio[name=?]", "course[studio]"

      assert_select "input#course_author_id[name=?]", "course[author_id]"
    end
  end
end
