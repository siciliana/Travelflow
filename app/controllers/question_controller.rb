class QuestionController < ApplicationController
  def index
    @questions = Question.all
  end

  def new

  end

  def show

    # session[:user_id] = 1  #FIXME delete these
    # params[:id] = 1

    session[:current_question_id] = params[:id]
    @question = Question.find(params[:id])
    @answers = @question.answers
  end
end

