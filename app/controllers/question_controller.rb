class QuestionController < ApplicationController
  def evaluation
    @categories = Category.all
    #@questions = Question.all
    @alternatives = Alternative.all
  end
end
