require 'spec_helper'

describe QuestionController do
  render_views

before (:each) do 
  @question_pass = Question.create(question_text: "What is the best city in Europe?")
  @question_fail = Question.create()

  # describe "GET /index" do
  #   it "should load succesfully" do
  #     get :index
  #     expect(response).to be_successful
  #   end
  # end

describe "#create" do 
  it "should rerender form if save fails" do
    expect(@question_fail).to render_template(:new)
  end
end 

end 
end 

#   describe "#create" do
#     it "should rerender form if save fails" do
#       Question.any_instance.stub(:save => false )
#       post :create
#       expect(response).to render_template(:new)
#     end
#   end 
# end 

    # it "should create question if validation passes" do
    #   question.any_instance.stub(:save => false )
    #   # enter more here 
    # end

    # it "should redirect to somewhere if question saves" do
    #   # enter more here
    # end

  # end



  # it should include "question_text" 

  # response.body.should have_field("Enter Question Here")  # checks for presence of a input field named FirstName in a form

  # it { should have_select("gender", :selected => "Male") }

  # response.body.should have_field("FirstName", :value => "Rambo")
  # response.body.should have_field("FirstName", :with => "Rambo")
  # And so on ...
  # end
# end
