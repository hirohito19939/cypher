class RemoveUsersIdFromKeys < ActiveRecord::Migration
  def change
    remove_column :keys, :users_id, :integer
    add_column :keys, :user_id, :integer
  end
end
