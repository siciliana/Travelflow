class QuestionController < ApplicationController
  def index
    @questions = Question.all
  end

  def new

  end

  def show
    session[:user_id] = 1  #FIXME delete these
    params[:question_id] = 1

    session[:current_question_id] = params[:question_id]
    @question = Question.find(params[:question_id])
    @answers = @question.answers
  end
end

