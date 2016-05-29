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
    evaluation.score = soma_ponto(params[:question])

    if evaluation.save
      redirect_to :back, flash: { success: "Deu bom" }
    else
      redirect_to :back, flash: { error: "Deu ruim" }
    end
  end

  private

  def soma_ponto(params)
    list_question = []
    score_acessibilidade = 0;
    score_usabilidade = 0;
    a = 0;


    params.each do |question|
      list_question<<question[1];

      a +=1;
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
#    opcao = Alternative.find(@list_question);
#    @score_acessibilidade = opcao.weight;
aaa



  end






end
