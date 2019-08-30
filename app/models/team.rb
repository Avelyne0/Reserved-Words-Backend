class Team < ApplicationRecord
  has_many :rounds, :users
  belongs_to :game
end
