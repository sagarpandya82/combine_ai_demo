require 'rails_helper'

RSpec.describe "Microposts", type: :system do
  before(:all) do
    @user_a = create(:user)
  end

  it 'No Microposts should exist' do
    expect(@user_a.mini_posts.count).to equal 0
  end

  it 'New Microposts created' do
    @mini_post = create(:mini_post)
    @user_b = @mini_post.user
    expect(@user_b.mini_posts.count).to eq 1
  end
end
