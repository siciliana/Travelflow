require 'spec_helper'



describe QuestionController do
  before do
    @question = Question.create(question_text: "emily")
  end

  describe "GET index" do
    it "assigns @questions to all questions"do
      questions = Question.all
      get :index
      expect(assigns(:questions)).to eq(questions)
    end
  end

  describe "GET show" do
    it "assigns @question to a specific question" do
      last_question = Question.last
      get :index
      expect(last_question).to eq(@question)
    end
  end
end


