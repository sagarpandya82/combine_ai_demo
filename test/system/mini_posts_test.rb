require "application_system_test_case"

class MiniPostsTest < ApplicationSystemTestCase
  setup do
    @mini_post = mini_posts(:one)
  end

  test "visiting the index" do
    visit mini_posts_url
    assert_selector "h1", text: "Mini posts"
  end

  test "should create mini post" do
    visit mini_posts_url
    click_on "New mini post"

    fill_in "Content", with: @mini_post.content
    fill_in "Likes", with: @mini_post.likes
    click_on "Create Mini post"

    assert_text "Mini post was successfully created"
    click_on "Back"
  end

  test "should update Mini post" do
    visit mini_post_url(@mini_post)
    click_on "Edit this mini post", match: :first

    fill_in "Content", with: @mini_post.content
    fill_in "Likes", with: @mini_post.likes
    click_on "Update Mini post"

    assert_text "Mini post was successfully updated"
    click_on "Back"
  end

  test "should destroy Mini post" do
    visit mini_post_url(@mini_post)
    click_on "Destroy this mini post", match: :first

    assert_text "Mini post was successfully destroyed"
  end
end
