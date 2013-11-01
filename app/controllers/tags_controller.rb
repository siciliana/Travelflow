class TagsController < ApplicationController


  def index
    @tag = Tag.all
  end

  def new
    @tag = Tag.new
  end
  def show
    @tag = Tag.find(params[:id])

  end
  # def show
  #   @tag = Tag.find(params[:id])
  #   @answer = Answer.new
  # end
  # params[:tag].each do |k, v|

  #  tag = Tag.create(name: params[:tag][:name],
  #                 question_id: params[:question][:id])
  #  # if @tag

  #  #   redirect_to tag_path(@tag)
  #  # else
  #    redirect_to 'questions#new'
  #  # end
  # end
end
