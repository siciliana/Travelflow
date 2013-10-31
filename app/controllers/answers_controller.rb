class AnswersController < ApplicationController

  def index
    @answer = Answer.new
  end

  def create
    @question = Question.find(params[:question_id])
    @answer = current_user.answers.new(params[:answer])
    @answer.question = @question

    if @answer.save
      redirect_to question_path(@question)
    else
      render 'questions/show'
    end
  end
end
