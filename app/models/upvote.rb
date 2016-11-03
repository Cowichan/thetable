class Upvote < ActiveRecord::Base
  belongs_to :user
  belongs_to :actualite

  validates :user, uniqueness: { scope: :actualite }
end
