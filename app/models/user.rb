class User < ApplicationRecord
  # belongs_to :forum, through: :standings
  # has_many :forums, through: :standings

  validates_presence_of :name
  validates_presence_of :email
end
