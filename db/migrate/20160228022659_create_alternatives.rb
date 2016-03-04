class CreateAlternatives < ActiveRecord::Migration
  def change
    create_table :alternatives do |t|
      t.string :description
      t.integer :weight
      t.integer :kind_id
      #t.references :kind, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
