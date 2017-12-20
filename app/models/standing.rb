class Standing < ApplicationRecord
  belongs_to :forum
  belongs_to :user

  validates_presence_of :ranking
end
