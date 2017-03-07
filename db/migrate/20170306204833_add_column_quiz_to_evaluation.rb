class AddColumnQuizToEvaluation < ActiveRecord::Migration
  def change
    add_reference :evaluations, :quiz, index: true, foreign_key: true
  end
end
