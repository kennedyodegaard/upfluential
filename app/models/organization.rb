class Organization < ApplicationRecord
  belongs_to :user
  has_many :events

  has_many_attached :photos
  has_one_attached :logo
end
