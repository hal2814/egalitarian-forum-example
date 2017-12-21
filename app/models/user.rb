class User < ApplicationRecord
  # belongs_to :forum, through: :standings
  # has_many :forums, through: :standings
  # has_secure_password
  has_many :posts
  has_many :comments

  validates_presence_of :name
  validates_presence_of :email
  validates :password, :presence => true,
                       :confirmation => true,
                       :length => {:within => 6..40}
end
