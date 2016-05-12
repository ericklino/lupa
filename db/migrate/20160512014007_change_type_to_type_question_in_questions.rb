class ChangeTypeToTypeQuestionInQuestions < ActiveRecord::Migration
  def change
    rename_column :questions, :type, :type_question
  end
end
