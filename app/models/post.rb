class Post < ApplicationRecord
  # belongs_to :forum
  belongs_to :user

  validates_presence_of :title
  validates_presence_of :content
end
