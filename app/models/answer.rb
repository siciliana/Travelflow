class Answer < ActiveRecord::Base
  attr_accessible :answer_text, :question_id, :user_id

  belongs_to :question
  belongs_to :user
  has_many :votes 
end
