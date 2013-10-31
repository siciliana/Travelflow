require 'spec_helper'



describe QuestionController do
  # before do
  #   @question = Question.create(question_text: "can you dance?")
  #   @answer = Answer.create(answer_text: "yes", question_id: 1)
  # end

  describe "GET index" do
    it "assigns @questions to all questions"do
      questions = Question.all
      get :index
      expect(assigns(:questions)).to eq(questions)
    end

    it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response).to be_successful
      expect(response.status).to eq (200)
    end
  end

  # describe "GET #show" do
  #   it "renders the show template" do

  #   end


  #   # it "assigns @question to a specific question" do
  #   #   question_id = 1
  #   #   get :show
  #   #   expect(@question).to eq(Question.find(question_id))
  #   # end

  #   # it "it assigns all answers to given question" do
  #   #   # get :show
  #   #   expect(@question.answers).should eq([@answer])

  #   # end
  # end


end


