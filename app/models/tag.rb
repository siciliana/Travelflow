class Tag < ActiveRecord::Base
  attr_accessible :name, :question_id
  
  belongs_to :question 
end
