class Post < ActiveRecord::Base
  validates :title, presence: true

  belongs_to :author,
    class_name: 'User',
    foreign_key: :author_id
  has_many :votes
end
