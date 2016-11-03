class UpvotesController < ApplicationController
  def create
    actualite = Actualite.find(params[:actualite_id])
    actualite.upvotes.create! user: current_user
    redirect_to actualites_path
  end

  def destroy
    upvote = Upvote.find(params[:id])
    upvote.destroy
    redirect_to actualites_path
  end
end
