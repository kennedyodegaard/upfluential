class Event < ApplicationRecord
  belongs_to :user
  belongs_to :organization

  validates :category, inclusion: { in: ["community", "environment", "youth", "seniors", "animals", "LGBTQ+", "culture", "outdoors", "indoors", "virtual", "sports"] }
end
