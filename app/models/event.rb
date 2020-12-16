class Event < ApplicationRecord
  belongs_to :user
  belongs_to :organization
  has_many_attached :photos

  has_many :bookings
  has_many :users, through: :bookings

  has_one :chatroom

  acts_as_favoritable
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  include PgSearch::Model
  pg_search_scope :search_by_location,
    against: [:location, :title, :category],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }


  validates :category, inclusion: { in: ["community", "environment", "youth", "seniors", "animals", "LGBTQ+", "culture", "outdoors", "indoors", "virtual", "sports"] }

  scope :completed, -> {where("end_time < ?", Time.now)}

  validates_length_of :title, maximum: 28
  after_create :create_chatroom

  def create_chatroom
    self.chatroom = Chatroom.create
  end

  def available_spots
    (self.capacity - self.bookings.count)
  end
  # def self.is_full? -> Event.is_full?
  def is_full? # Event.last.is_full? -> self == Event.last
    self.available_spots <= 0
  end

  def activity_time
    ((self.end_time - self.start_time) / 3600).to_i
  end

  def completed?
    self.end_time < Time.now
  end

  def self.categories
    ["community", "environment", "youth", "seniors", "animals", "LGBTQ+", "culture", "outdoors", "indoors", "virtual", "sports"]
  end

  def already_joined?(user)
    user.nil? ? false : user.bookings.any? { |booking| booking.event == self}
  end

  def cta_content(user)
    if self.is_full?
      '<p class="pl-2 pr-2 mb-0">SORRY, THIS EVENT IS FULL </p><i class="fas fa-exclamation-triangle"></i>'
    elsif self.already_joined?(user)
      '<p class="pl-2 pr-2 mb-0">YOU\'RE ALREADY REGISTERED </p><i class="fas fa-exclamation-triangle"></i>'
    else
      "<p class=\"mb-0\">#{self.available_spots} SPOTS LEFT <i class=\"fas fa-user-plus\"></i></p>"
    end
  end
end
