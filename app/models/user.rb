class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :events
  has_many :messages
  has_many :bookings
  has_many :booked_events, through: :bookings, source: :event
  has_many :chatrooms, through: :booked_events

  has_one :organization

  has_one_attached :photo
  acts_as_favoritor
  acts_as_target


  def hours_volunteered
    sum = 0
    self.events.each do |event|
      if event.completed?
        sum += event.activity_time
      end
    end
    sum
  end

  def booked_for?(event)
    self.bookings.any? { |booking| booking.event == event}
  end
end
