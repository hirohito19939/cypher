class AddColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :mc_name, :string
  end
end
