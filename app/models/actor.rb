class Actor < ApplicationRecord
  has_many :castings, dependent: :destroy
  has_many :movies, through: :castings

  validates :name, presence: true, length: { maximum: 255 }
  validates :dob, presence: true
  validate  :dob_in_the_past

  # Optional validations for new fields
  validates :net_worth, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, allow_nil: true

  # Simple case-insensitive search by name
  scope :search, ->(q) {
    if q.present?
      where("name LIKE ?", "%#{q}%")
    else
      all
    end
  }

  def age
    return nil unless dob
    today = Date.current
    years = today.year - dob.year
    years -= 1 if Date.new(today.year, dob.month, dob.day) > today
    years
  end

  # Returns awards as an array of lines (split by newline)
  def awards_list
    return [] if awards.blank?
    awards.to_s.split(/\r?\n/).map(&:strip).reject(&:blank?)
  end

  def awards_list
    return [] if awards.blank?
    awards.to_s.split(/\r?\n/).map(&:strip).reject(&:blank?)
  end

  private

  def dob_in_the_past
    return if dob.blank?
    errors.add(:dob, "must be in the past") if dob > Date.today
  end
end
