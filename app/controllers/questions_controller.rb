class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def show
    @question = Question.find(params[:id])
    @answer = Answer.new
  end

	# def create
 #    @question = Question.new(params[:question_text])
 #    if @question.save
 #      redirect_to :create
 #    else
 #      render :new
 #    end 
	# end

  def create
   p  params
   @question = Question.new(question_text: params[:question][:question_text], user_id: current_user.id)
   if @question
     @question.save
     redirect_to question_path(@question)
   else
     redirect_to 'questions#new' 
   end 
  end
end
