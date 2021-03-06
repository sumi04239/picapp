class AdvisesController < ApplicationController
  before_action :authenticate_user!, only: [:new]

  def index
    @advises = Advise.page(params[:page])
  end

  def new
    @advise = Advise.new
  end

  def create
    @advise = Advise.new(advise_params)
    if @advise.save
      redirect_to advises_path
    else
      render :new
    end
  end

  def show
    @advise = Advise.find(params[:id])
    @answer = Answer.new
    @answers = @advise.answer.includes(:user)
  end

  private
  def advise_params
    params.require(:advise).permit(:title, :text).merge(user_id: current_user.id)
  end

end
