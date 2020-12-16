class Chatroom < ApplicationRecord
  belongs_to :event
  has_many :messages
  has_many :messaged_users, through: :messages, source: :user
end
