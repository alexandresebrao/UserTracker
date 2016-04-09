class Page < ActiveRecord::Base
  belongs_to :user
  validates :page, presence: true
end
