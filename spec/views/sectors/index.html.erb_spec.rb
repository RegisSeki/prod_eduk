require 'rails_helper'

RSpec.describe "sectors/index", type: :view do
  before(:each) do
    assign(:sectors, [
      Sector.create!(
        :name => "Name"
      ),
      Sector.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of sectors" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
