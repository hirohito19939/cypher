class CreateKeys < ActiveRecord::Migration
  def change
    create_table :keys do |t|
      t.integer :mc_name_id
      t.integer :cyfer_id

      t.timestamps null: false
    end
  end
end
