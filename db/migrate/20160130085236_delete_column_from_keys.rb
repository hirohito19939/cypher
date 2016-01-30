class DeleteColumnFromKeys < ActiveRecord::Migration
  def change
    remove_column :keys, :mc_name_id, :integer
    add_column :keys, :users_id, :integer
  end
end
