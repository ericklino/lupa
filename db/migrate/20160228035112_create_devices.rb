class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.string :name
      t.string :phone_img
      t.integer :mark_id
      #t.references :mark, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
