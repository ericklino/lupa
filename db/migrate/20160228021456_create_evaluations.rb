class CreateEvaluations < ActiveRecord::Migration
  def change
    create_table :evaluations do |t|
      t.datetime :date_evaluation
      t.boolean :status
      t.integer :user_id
      t.integer :device_id

      #t.references :user, index: true, foreign_key: true
      #t.references :device, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
