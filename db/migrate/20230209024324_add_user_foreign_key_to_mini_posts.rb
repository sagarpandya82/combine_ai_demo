class AddUserForeignKeyToMiniPosts < ActiveRecord::Migration[7.0]
  def change
    add_reference :mini_posts, :user, foreign_key: true
  end
end
