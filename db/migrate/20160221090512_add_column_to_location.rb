class AddColumnToLocation < ActiveRecord::Migration
  def change
    add_column :locations, :cyfer_id, :integer
  end
end
