class RemoveUserFromPosts < ActiveRecord::Migration[6.1]
  def change
    remove_column :posts, :user, :string
  end
end
