class AddFollowersToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :followers, :integer, array: true, default: []
  end
end
