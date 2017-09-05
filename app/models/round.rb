class Round < ApplicationRecord
  validates_numericality_of :number, presence: true, :greater_than_or_equal_to => 1, :less_than_or_equal_to => 5
end
