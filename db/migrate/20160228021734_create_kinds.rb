class CreateKinds < ActiveRecord::Migration
  def change
    create_table :kinds do |t|
      t.integer :description

      t.timestamps null: false
    end
  end
end
