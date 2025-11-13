class Movie < ApplicationRecord
  has_many :bookmarks # BUT WHY
  has_many :lists, through: :bookmarks

  # A movie must have a unique title and an overview.
  validates :title, :overview, presence: true, uniqueness: true
end
