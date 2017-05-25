class EvaluationController < ApplicationController

  def list_evaluation
   @evaluations = Evaluation.where(user_id: current_user.id).page(params[:page]).per(5)
  end





end
