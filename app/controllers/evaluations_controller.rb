class EvaluationsController < ApplicationController
  def index
    @evaluations = Evaluation.where(user_id: current_user.id).page(params[:page]).per(5)
  end
end
