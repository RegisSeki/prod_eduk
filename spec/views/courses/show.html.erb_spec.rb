require 'rails_helper'

RSpec.describe "courses/show", type: :view do
  before(:each) do
    @course = assign(:course, Course.create!(
      :course_id => 2,
      :name => "Name",
      :parts => 3,
      :livestream_link => "Livestream Link",
      :amazon_link => "Amazon Link",
      :studio => "Studio",
      :author => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Livestream Link/)
    expect(rendered).to match(/Amazon Link/)
    expect(rendered).to match(/Studio/)
    expect(rendered).to match(//)
  end
end
