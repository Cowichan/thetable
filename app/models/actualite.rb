class Actualite < ActiveRecord::Base
  has_attachment :photo

  belongs_to :user
  has_many :upvotes

  validates :name, presence: true, uniqueness: false
  validates :tagline, presence: true, uniqueness: false
  validates :classification, inclusion: { in: %w(cinema debat musique),
    message: "%{value} is not a valid classification" }
end
