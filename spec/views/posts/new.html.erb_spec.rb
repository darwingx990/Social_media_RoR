require 'rails_helper'

RSpec.describe "posts/new", type: :view do
  before(:each) do
    assign(:post, Post.new(
      tittle: "MyString",
      content: "MyText",
      status: "MyString",
      user: nil,
      post: nil
    ))
  end

  it "renders new post form" do
    render

    assert_select "form[action=?][method=?]", posts_path, "post" do

      assert_select "input[name=?]", "post[tittle]"

      assert_select "textarea[name=?]", "post[content]"

      assert_select "input[name=?]", "post[status]"

      assert_select "input[name=?]", "post[user_id]"

      assert_select "input[name=?]", "post[post_id]"
    end
  end
end
