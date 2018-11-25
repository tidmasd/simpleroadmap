require 'rails_helper'

RSpec.describe "feedbacks/edit", type: :view do
  before(:each) do
    @feedback = assign(:feedback, Feedback.create!(
      :title => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit feedback form" do
    render

    assert_select "form[action=?][method=?]", feedback_path(@feedback), "post" do

      assert_select "input[name=?]", "feedback[title]"

      assert_select "input[name=?]", "feedback[description]"
    end
  end
end
