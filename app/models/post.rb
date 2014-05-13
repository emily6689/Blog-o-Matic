class Post < ActiveRecord::Base
  validates :title, presence: true
  belongs_to :user
  has_many :votes
end
