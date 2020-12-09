class Event < ApplicationRecord
  belongs_to :user
  belongs_to :organization
  has_many_attached :photos

  has_many :bookings
  has_many :users, through: :bookings

  include PgSearch::Model
  pg_search_scope :search_by_location,
    against: [:location],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
  validates :category, inclusion: { in: ["community", "environment", "youth", "seniors", "animals", "LGBTQ+", "culture", "outdoors", "indoors", "virtual", "sports"] }
  

  # def self.is_full? -> Event.is_full?
  def is_full? # Event.last.is_full? -> self == Event.last
    self.capacity - self.bookings.count <= 0
  end
end
