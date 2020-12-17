class Chatroom < ApplicationRecord
  belongs_to :event
  has_many :messages, dependent: :destroy 
  has_many :messaged_users, through: :messages, source: :user
end
