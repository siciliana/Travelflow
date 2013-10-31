require 'spec_helper'



describe QuestionController do

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

  describe "GET #show" do

      let (:question) {Question.create(question_text: "emily")}
      let(:answer) {Answer.create(answer_text: "that's right", question_id: question.id)}

      # let(:answer2) {Answer.create(answer_text: "that's right", question_id: question.id)}

    it "requires the :id parameter" do
      expect{get :show}.to raise_error(ActionController::RoutingError)
    end

    it "receives a question" do
      get :show, :id => question
      expect(Question.find(Question.last.id)).to eq(question)
    end

    it "renders the show templete" do
      get :show, id: question
      response.should render_template :show
    end

    # it "generates all answers for selected question" do
    #   get :show, :id => question
    #   get :show,
    #   (question.answers).to match([])
    # end

  end


end


