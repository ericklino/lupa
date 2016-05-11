class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :enunciation
      t.integer :type 
      t.integer :category_id
      # t.integer :kind_id
      #t.references :category, index: true, foreign_key: true
      #t.references :kind, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
