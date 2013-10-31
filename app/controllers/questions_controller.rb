class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def new
  end

  def show
    @question = Question.find(params[:id])
    @answer = Answer.new
  end
end

