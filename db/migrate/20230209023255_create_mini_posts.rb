class CreateMiniPosts < ActiveRecord::Migration[7.0]
  def change
    create_table :mini_posts do |t|
      t.text :content, null: false
      t.integer :likes

      t.timestamps
    end
  end
end
