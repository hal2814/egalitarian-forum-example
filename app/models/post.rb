class Post < ApplicationRecord
  # belongs_to :forum
  belongs_to :user
  has_many :comments
  has_many :posts

  validates_presence_of :title
  validates_presence_of :content
end
