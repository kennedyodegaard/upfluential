class Event < ApplicationRecord
  belongs_to :user
  belongs_to :organization

  include PgSearch::Model
  pg_search_scope :search_by_location,
    against: [:location],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
