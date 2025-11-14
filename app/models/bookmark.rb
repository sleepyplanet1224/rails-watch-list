class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  # # The comment of a bookmark cannot be shorter than 6 characters.
  validates :comment, length: { minimum: 6 }, presence: true

  # # A bookmark must be linked to a movie and a list, and the [movie, list] pairings should be unique.
  # validates :movie, :list, presence: true || NOT IN NOEMI'S CODE
  validates :movie, uniqueness: { scope: :list }
end
