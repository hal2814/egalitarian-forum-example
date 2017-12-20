class Forum < ApplicationRecord
  belongs_to :user, through: :standings
  has_many :users, through: :standings
  has_many :posts

  validates_presence_of :name
end
