require 'spec_helper'

describe QuestionController do
describe "question" do
  before do
    @question = Question.create(question_text:"hello")
    @question2 = Question.create(question_text:"yo")
  end

  it "#question_text" do

    @question.question_text.should eq("hello")
  end
end
end
