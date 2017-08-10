require 'test_helper'

class PostTest < ActiveSupport::TestCase
  
  def setup
    @post = Post.new(title: "Loren Ipsum",
                     body: "olar")
  end

  test "should be valid" do
    assert @post.valid?
  end

  test "title should be at least 5 characters long" do
    @post.title = "ABC"
    assert_not @post.valid?
  end

  test "body should be present" do
    @post.body = "   "
    assert_not @post.valid?
  end

  test "order should be most recent first" do
    assert_equal posts(:most_recent), Post.first
  end

end
