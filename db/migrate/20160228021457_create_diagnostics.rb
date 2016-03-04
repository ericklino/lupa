class CreateDiagnostics < ActiveRecord::Migration
  def change
    create_table :diagnostics do |t|
      t.text :description
      t.integer :score
      t.integer :evaluation_id
      #t.references :evaluation, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
