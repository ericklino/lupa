class AddScoreAcessibilidadeToEvaluation < ActiveRecord::Migration
  def change
    add_column :evaluations, :score_acessibilidade, :integer
  end
end
