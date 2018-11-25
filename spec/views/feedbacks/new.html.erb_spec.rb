require 'rails_helper'

RSpec.describe "feedbacks/new", type: :view do
  before(:each) do
    assign(:feedback, Feedback.new(
      :title => "MyString",
      :description => "MyString"
    ))
  end

  it "renders new feedback form" do
    render

    assert_select "form[action=?][method=?]", feedbacks_path, "post" do

      assert_select "input[name=?]", "feedback[title]"

      assert_select "input[name=?]", "feedback[description]"
    end
  end
end
