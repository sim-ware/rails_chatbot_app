require 'rails_helper'

RSpec.describe "messages/index", type: :view do
  before(:each) do
    assign(:messages, [
      Message.create!(
        :script => "MyText"
      ),
      Message.create!(
        :script => "MyText"
      )
    ])
  end

  it "renders a list of messages" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
