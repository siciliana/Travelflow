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

  def create
   p  params
   @question = Question.new(question_text: params[:question][:question_text],
                            user_id: current_user.id)
    if @question
      @question.save
      params[:tag].each do |k, v|
        @question.tags.create(name: v)
      end
      redirect_to question_path(@question)
    else
      redirect_to 'questions#new'
    end
  end
end
