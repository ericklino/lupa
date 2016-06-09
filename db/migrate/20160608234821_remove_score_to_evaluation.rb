class RemoveScoreToEvaluation < ActiveRecord::Migration
  def change
    remove_column :evaluations, :score
  end
end
