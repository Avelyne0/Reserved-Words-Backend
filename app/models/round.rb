class Round < ApplicationRecord
  has_many :questions
  belongs_to :team
end
