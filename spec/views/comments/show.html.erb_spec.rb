require 'rails_helper'

RSpec.describe "comments/show", type: :view do
  before(:each) do
    assign(:comment, Comment.create!(
      content: "MyText",
      status: "Status",
      user: nil,
      post: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Status/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
