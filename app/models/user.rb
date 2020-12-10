class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :events

  has_many :bookings
  has_many :events, through: :bookings

  has_one :organization

  has_one_attached :photo

  acts_as_favoritor
end
