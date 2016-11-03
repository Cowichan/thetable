class User < ActiveRecord::Base
  has_many :actualites
  has_many :upvotes
  has_attachment :avatar
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def voted_for?(actualite)
    actualite.upvotes.where(user: self).any?
  end
end
