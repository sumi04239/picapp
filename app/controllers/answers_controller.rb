class AnswersController < ApplicationController
  def create
    answer = Answer.create(answer_params)
    redirect_to "/advises/#{answer.advise.id}"
  end

  private
  def answer_params
    params.require(:answer).permit(:text).merge(user_id: current_user.id, advise_id: params[:advise_id])
  end
end
