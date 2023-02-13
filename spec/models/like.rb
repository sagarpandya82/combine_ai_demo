require 'rails_helper'

RSpec.describe "Like", type: :system do
  before(:all) do
    @mini_post_a = create(:mini_post)
    @like = create(:like)
  end

  it 'No Likes should exist' do
    expect(@mini_post_a.likes.count).to equal 0
  end

  it 'New Like' do
    @mini_post = @like.mini_post
    expect(@mini_post.likes.count).to eq 1
  end
end
