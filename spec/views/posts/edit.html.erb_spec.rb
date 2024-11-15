require 'rails_helper'

RSpec.describe "posts/edit", type: :view do
  let(:post) {
    Post.create!(
      tittle: "MyString",
      content: "MyText",
      status: "MyString",
      user: nil,
      post: nil
    )
  }

  before(:each) do
    assign(:post, post)
  end

  it "renders the edit post form" do
    render

    assert_select "form[action=?][method=?]", post_path(post), "post" do

      assert_select "input[name=?]", "post[tittle]"

      assert_select "textarea[name=?]", "post[content]"

      assert_select "input[name=?]", "post[status]"

      assert_select "input[name=?]", "post[user_id]"

      assert_select "input[name=?]", "post[post_id]"
    end
  end
end
