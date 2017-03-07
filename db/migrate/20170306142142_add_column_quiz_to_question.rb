class AddColumnQuizToQuestion < ActiveRecord::Migration
  def change
    add_reference :questions, :quiz, index: true, foreign_key: true
  end
end
