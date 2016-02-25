class AddColumnToCyfers < ActiveRecord::Migration
  def change
    add_column :cyfers, :shusai_id, :integer
    add_column :cyfers, :shusai_name, :string
  end
end