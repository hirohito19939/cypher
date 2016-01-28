class CreateCyfers < ActiveRecord::Migration
  def change
    create_table :cyfers do |t|
      t.string :date_time
      t.string :name
      t.string :place
      t.text :detail

      t.timestamps null: false
    end
  end
end
