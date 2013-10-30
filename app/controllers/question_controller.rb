class QuestionController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(1) #FIXME should be params[:question_id]
  end
end
