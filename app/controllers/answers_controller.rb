class AnswersController < ApplicationController

  def index
    @answer = Answer.new
  end

  def tag
    @question = Question.find(params[:id])

    respond_to do |format|
      format.js
    end
  end

  def create
    @question = Question.find(params[:question_id])
    @answer = current_user.answers.new(params[:answer])
    @answer.question = @question
    p "---------------------------------------------------------"
    p params[:tag]
    if @answer.save
      params[:tag].each do |k, v|
        @answer.tags.create(name: v)

      end
      redirect_to question_path(@question)
    else
      render 'questions/show'
    end
  end
end
