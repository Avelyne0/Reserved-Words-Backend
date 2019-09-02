class User < ApplicationRecord
  validates :name, length: {minimum: 3}
  belongs_to :team
end
