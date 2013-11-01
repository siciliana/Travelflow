class Answer < ActiveRecord::Base
  attr_accessible :answer_text, :question_id, :user_id

  has_many :taggings
  has_name :tags, through: :taggings

  belongs_to :user
  has_many :votes 
end























