require 'rails_helper'

RSpec.describe "rounds/index", type: :view do
  before(:each) do
    assign(:rounds, [
      Round.create!(
        :number => 2
      ),
      Round.create!(
        :number => 2
      )
    ])
  end

  it "renders a list of rounds" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
