module ReportHelper

  def search_score_diagnostic
    @sim = Diagnostic.find_by(name: 'Sim')
  end



  def search_score_diagnostic_acessibilidade
    @sim = Diagnostic.find_by(name: 'Sim')
    @nao = Diagnostic.find_by(name: 'Não')
  end


  def eval_spec(device, dg)
   @evals_yes =  Evaluation.where("device_id = ?", device).where("score_acessibilidade = ? ", dg.first.score).count
   @evals_no =  Evaluation.where("device_id = ?", device).where("score_acessibilidade = ? ", dg.last.score).count

  end



  def percent_of_votes
    percent = 0
    percent = (votes * 100 / poll_question.votes) if votes.size > 0 && poll_question.votes > 0
    percent > 0 ? percent.to_s << "%" :percent
  end
end
