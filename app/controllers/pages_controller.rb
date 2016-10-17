class PagesController < ApplicationController
  def home
  end
  def team
    @members = ["Bob", "Romain", "Seb"]
  end
  def join_us
  end
end
