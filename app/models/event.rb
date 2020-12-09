class Event < ApplicationRecord
  belongs_to :user
  belongs_to :organization
  has_many_attached :photos

  has_many :bookings
  has_many :users, through: :bookings

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  include PgSearch::Model
  pg_search_scope :search_by_location,
    against: [:location],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
  validates :category, inclusion: { in: ["community", "environment", "youth", "seniors", "animals", "LGBTQ+", "culture", "outdoors", "indoors", "virtual", "sports"] }
  
  
  def available_spots
    self.capacity - self.bookings.count
  end
  # def self.is_full? -> Event.is_full?
  def is_full? # Event.last.is_full? -> self == Event.last
    self.available_spots <= 0
  end
end
