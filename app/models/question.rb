class Question < ActiveRecord::Base
  attr_accessible :question_text, :title, :user_id, :view_count
end
