class Event < ApplicationRecord
  belongs_to :user
  belongs_to :organization

  has_many_attached :photos
end
