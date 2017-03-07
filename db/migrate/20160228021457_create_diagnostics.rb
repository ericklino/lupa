class CreateDiagnostics < ActiveRecord::Migration
  def change
    create_table :diagnostics do |t|
      t.text :description
      t.integer :score
    
      t.timestamps null: false
    end
  end
end
