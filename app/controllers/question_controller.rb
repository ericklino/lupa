class QuestionController < ApplicationController
  def evaluation
    @categories = Category.all
    #@questions = Question.all
    @alternatives = Alternative.all

    @evaluation = Evaluation.new
  end

  def create_evaluation
    evaluation = Evaluation.new
    evaluation.user = current_user
    evaluation.device_id = params[:evaluation][:device_id].to_i
    score = soma_ponto(params[:question])
    evaluation.score_acessibilidade = score.first
    evaluation.score_usabilidade = score.last

    if evaluation.save
      flash['success'] = "Deu bom"
      redirect_to :back
    else
      flash['error'] = "Deu ruim"
      redirect_to :back
    end
  end

  private

  def soma_ponto(params)
    list_question = []
    score_acessibilidade = 0;
    score_usabilidade = 0;
    score_total = [];


    params.each do |question|
      list_question<<question[1];


    end
#------------------------if--------------------#
  list_question.each do |q|
        aux = q;
        valor = Alternative.find(aux.to_i);

        if valor.kind_id == 1
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
