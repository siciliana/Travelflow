require 'spec_helper'

describe UsersController do
  it "should render the new user page successfully" do
    get :new
    response.status.should eq 200
  end

  it "allows a user to signup" do
    User.count.should == 0
    create_user
    User.count.should == 1
  end

  it "signing up requires an email address" do
    User.count.should == 0
    create_user(:email => nil)
    User.count.should == 0
  end

  it "signing up requires a password" do
    User.count.should == 0
    create_user(:password => nil)
    User.count.should == 0
  end

  it "if user is saved, redirect" do
    create_user 
    response.should be_redirect
  end

  it "if user is not saved, rerender form" do
    create_user(:password => nil)
    response.should render_template("new")
  end

  it "allows a user to login" do
    create_user
    post :login, :user => {:email => "email@email.com", :password => "password"}
    # session[:user_id].should_not_be_nil
    response.should be_redirect
  end

  def create_user(options = {})
    post :create, :user => {:email => "email@email.com", :password =>"password"}.merge(options)
  end
end


