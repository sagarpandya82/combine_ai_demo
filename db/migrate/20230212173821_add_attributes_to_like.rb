class AddAttributesToLike < ActiveRecord::Migration[7.0]
  def change
    add_reference :likes, :user, foreign_key: true
    add_reference :likes, :mini_post, foreign_key: true
  end
end
