class QuestionController < ApplicationController

  def evaluation
    # Aqui eu estou puxando o primeiro questionario
    @quiz = Quiz.first
    @evaluation = Evaluation.new
  end

  def create_evaluation
    evaluation = Evaluation.new
    evaluation.user = current_user
    evaluation.device_id = params[:evaluation][:device_id].to_i
    evaluation.quiz_id = params[:evaluation][:quiz_id].to_i
    evaluation.status = true
    score = soma_ponto(params[:question])
    evaluation.score_acessibilidade = score.first
    evaluation.score_usabilidade = score.last

    if evaluation.save
      flash['success'] = "Avaliação Realizada com Sucesso"
      redirect_to list_devices_path
    else
      flash['error'] = "Verifique"
      #redirect_to :back
    end
  end

  private

  def soma_ponto(params)
    score_acessibilidade = 0;
    score_usabilidade = 0;
    score_total = [];
#------------------------if--------------------#
    params.each_value do |q|
        valor = Alternative.find(q.to_i);

        if valor.type_alternative == 'accessibility'
        score_acessibilidade += valor.weight;
        else
        score_usabilidade += valor.weight;
        end
    end
#------------------------if--------------------#

  score_total<<score_acessibilidade;
  score_total<<score_usabilidade;
  end
end
