class Movie < ApplicationRecord
  has_many :castings, dependent: :destroy
  has_many :actors, through: :castings

  validates :title, presence: true, length: { maximum: 255 }
  validates :duration, numericality: { only_integer: true, greater_than: 0 }, allow_nil: true
  validates :rating, inclusion: { in: 0..5 }, allow_nil: true

  # Simple case-insensitive search by title
  scope :search, ->(q) {
    if q.present?
      where("title LIKE ?", "%#{q}%")
    else
      all
    end
  }
end
