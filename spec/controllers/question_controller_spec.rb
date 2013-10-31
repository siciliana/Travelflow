require 'spec_helper'

describe QuestionController do

  it "should render index successfully" do
    get :index
    response.status.should eq 200
  end
  
end

