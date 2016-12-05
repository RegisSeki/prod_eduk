require 'rails_helper'

RSpec.describe "courses/new", type: :view do
  before(:each) do
    assign(:course, Course.new(
      :course_id => 1,
      :name => "MyString",
      :parts => 1,
      :livestream_link => "MyString",
      :amazon_link => "MyString",
      :studio => "MyString",
      :author => nil
    ))
  end

  it "renders new course form" do
    render

    assert_select "form[action=?][method=?]", courses_path, "post" do

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
