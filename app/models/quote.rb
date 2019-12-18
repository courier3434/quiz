class Quote < ApplicationRecord
  validates :episode, presence: true, length: {maximum 30, minimum: 3 }
  validates :airdate, presense: true, length: {maximum 15, minimum: 5 }
end
