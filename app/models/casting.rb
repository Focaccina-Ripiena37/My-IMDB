class Casting < ApplicationRecord
  belongs_to :movie
  belongs_to :actor

  validates :actor_id, presence: true
  validates :movie_id, presence: true
  validates :character, presence: true, length: { maximum: 255 }
end
