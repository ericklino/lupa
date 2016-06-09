class AddScoreUsabilidadeToEvaluation < ActiveRecord::Migration
  def change
    add_column :evaluations, :score_usabilidade, :integer
  end
end
