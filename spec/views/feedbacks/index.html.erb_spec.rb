require 'rails_helper'

RSpec.describe "feedbacks/index", type: :view do
  before(:each) do
    assign(:feedbacks, [
      Feedback.create!(
        :title => "Title",
        :description => "Description"
      ),
      Feedback.create!(
        :title => "Title",
        :description => "Description"
      )
    ])
  end

  it "renders a list of feedbacks" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
