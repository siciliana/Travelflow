require 'spec_helper'

describe User do
  describe "#create" do
    it "should require an email, a password and a password confirmation" do
      user = User.new()
      user.save.should eq false
    end

  end

  describe "#new" do
    it "should render the new user page/form successfully" do
      render 
      response.status.should eq 200
  end

  end


end
