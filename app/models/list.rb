class List < ApplicationRecord
  # FYI THE ORDER MATTERS HERE. IF YOU FLIP THE TWO BELOW, YOU GET AN ERROR.
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
  # A list must have a unique name.
  validates :name, presence: true, uniqueness: true
end
