class Team < ApplicationRecord
  has_many :rounds
  has_many :users
  belongs_to :game
end
