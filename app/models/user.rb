class User < ApplicationRecord
  validates :name, length: {minimum: 1}
  belongs_to :team
end
