class Question < ApplicationRecord
  belongs_to :round, optional: true
end