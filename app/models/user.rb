class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :username, presence: true,
            uniqueness: {case_sensitive: false}
  validates :role, inclusion: {in: ['admin', 'member']}

  has_many :posts,
    foreign_key: :author_id
  has_many :votes

  mount_uploader :gravatar, GravatarUploader

  def is_admin?
    role == 'admin'
  end
end
