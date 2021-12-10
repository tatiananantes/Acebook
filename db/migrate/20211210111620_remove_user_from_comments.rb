class RemoveUserFromComments < ActiveRecord::Migration[6.1]
  def change
    remove_column :comments, :user, :string
  end
end
