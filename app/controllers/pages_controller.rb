class PagesController < ApplicationController
  skip_before_action :authenticate_user!
  def home
    @actualites = Actualite.order('id DESC').limit('3')
  end
  def team
    @members = ["Bob", "Romain", "Seb"]
  end
  def join_us
  end
end
