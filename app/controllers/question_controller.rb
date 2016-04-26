class QuestionController < ApplicationController
  def evaluation
    @category = Category.all 
  end
end
