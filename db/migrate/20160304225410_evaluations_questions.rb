class EvaluationsQuestions < ActiveRecord::Migration
  def change
    create_table :evaluations_questions do |t|
      t.integer :evalution_id
      t.integer :question_id

      t.timestamps null: false
    end
  end
end
