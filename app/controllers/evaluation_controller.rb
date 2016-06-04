class EvaluationController < ApplicationController

  def list_evaluation
   @evaluations = Evaluation.where(user_id: current_user.id)

  end




end
