class Answer < ActiveRecord::Base
  attr_accessible :answer_text, :question_id, :user_id
end
