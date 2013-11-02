class Answer < ActiveRecord::Base

  has_many :taggings #:dependent => :destroy - if we could delete
  has_many :tags, through: :taggings
  has_many :votes

  belongs_to :question
  belongs_to :user
  # validates_presence_of :name      #### Should we add this?

  attr_accessible :answer_text, :question_id, :user_id, :tag_names

  after_save :assign_tags

  def tag_names
    @tag_names || tags.map(&:name).join(' ')
  end

  private

  def assign_tags
    if @tag_names
      self.tags = @tag_names.split(/\s+/).map do |name|
        # Tag.find_or_create_by_name(name)
        answer.tags.create_by_name(name)
      end
    end
  end
end
