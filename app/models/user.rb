class User < ActiveRecord::Base
  attr_accessible :email, :name, :password
  

  has_many :questions
  has_many :answers

  validates :email, presence: true
  validates :password, presence: true

  has_secure_password

end
