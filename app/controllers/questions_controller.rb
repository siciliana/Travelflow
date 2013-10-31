class QuestionsController < ApplicationController
  def index
    @questions = Question.all
    render :new
  end

  def new
  end

  def show
    @question = Question.find(params[:id])
    @answer = Answer.new
  end

	def create
    @question = Question.new(params[:question_text])
    if @question.save
      redirect_to :create
    else
      render :new
    end 
	end
end
