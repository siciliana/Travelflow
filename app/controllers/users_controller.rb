class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(params[:user])
    redirect_to '/' #FIXME - this should redirect to the profile page
  end
end
