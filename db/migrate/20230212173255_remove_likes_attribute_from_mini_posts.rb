class RemoveLikesAttributeFromMiniPosts < ActiveRecord::Migration[7.0]
  def change
    remove_column :mini_posts, :likes
  end
end
