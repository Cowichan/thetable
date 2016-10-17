class PagesController < ApplicationController
  skip_before_action :authenticate_user!
  def home
  end
  def team
    @members = ["Bob", "Romain", "Seb"]
  end
  def join_us
  end
end
