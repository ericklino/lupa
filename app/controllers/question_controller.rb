class QuestionController < ApplicationController
  def evaluation
    @categories = Category.all
    #@questions = Question.all
    @alternatives = Alternative.all

    @evaluation = Evaluation.new
  end

  def create_evaluation
    redirect_to :back
  end
end
