class Tag < ActiveRecord::Base
strip_attributes

  attr_accessible :name, :question_id

  belongs_to :answer

end
