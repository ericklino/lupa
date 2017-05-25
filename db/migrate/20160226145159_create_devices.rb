class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.string :model_device
      t.string :processor
      t.string :os
      t.string :size_device
      t.string :type_device
      t.string :phone_img
      t.references :mark, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
