require "test_helper"

class MiniPostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mini_post = mini_posts(:one)
  end

  test "should get index" do
    get mini_posts_url
    assert_response :success
  end

  test "should get new" do
    get new_mini_post_url
    assert_response :success
  end

  test "should create mini_post" do
    assert_difference("MiniPost.count") do
      post mini_posts_url, params: { mini_post: { content: @mini_post.content, likes: @mini_post.likes } }
    end

    assert_redirected_to mini_post_url(MiniPost.last)
  end

  test "should show mini_post" do
    get mini_post_url(@mini_post)
    assert_response :success
  end

  test "should get edit" do
    get edit_mini_post_url(@mini_post)
    assert_response :success
  end

  test "should update mini_post" do
    patch mini_post_url(@mini_post), params: { mini_post: { content: @mini_post.content, likes: @mini_post.likes } }
    assert_redirected_to mini_post_url(@mini_post)
  end

  test "should destroy mini_post" do
    assert_difference("MiniPost.count", -1) do
      delete mini_post_url(@mini_post)
    end

    assert_redirected_to mini_posts_url
  end
end
