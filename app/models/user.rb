

class User < ActiveRecord::Base
  has_many :pages
  validates :email, email: true, presence: false
end
