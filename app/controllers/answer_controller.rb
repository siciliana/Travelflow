class AnswerController < ApplicationController
  def index
    @answer = Answer.new
  end

  def create
    @answer = Answer.create(answer_text: params[:answer], question_id: session[:current_question_id], user_id: session[:user_id])
    redirect_to '/question/2'
  end

  def show

  end



end
