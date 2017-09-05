class Message < ApplicationRecord
  validates :script, presence: true
end
