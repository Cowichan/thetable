class Actualite < ActiveRecord::Base
  belongs_to :user

  validates :name, presence: true, uniqueness: false
  validates :tagline, presence: true, uniqueness: false
  validates :classification, inclusion: { in: %w(cinema debat musique),
    message: "%{value} is not a valid classification" }
end
