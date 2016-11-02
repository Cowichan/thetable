class ActualitesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  before_action :find_product, only: [:show, :edit, :update, :destroy]


  before_action :current_user?, only: [:edit, :destroy]

  def current_user?
    if @actualite.user != current_user
        flash[:alert] = "Vous n'avez pas accès à cette page."
        redirect_to actualites_path
    end
  end

  def index
    if params[:classification]
      @actualites = Actualite.where(classification: params[:classification]).order('id DESC').limit('5')
    else
      @actualites = Actualite.all.order('id DESC').limit('5')
    end
  end
  def show
    @actualite = Actualite.find(params[:id])
  end
  def new
    @actualite = Actualite.new
  end
  def create
    @actualite = Actualite.new(actualite_params)
    @actualite.user = current_user
    if @actualite.save
    redirect_to actualites_path
    else
      render :new
    end
  end
  def edit
    @actualite = Actualite.find(params[:id])
  end
  def update
    @actualite = Actualite.find(params[:id])
    if @actualite.update(actualite_params)
      redirect_to actualites_path
    else
      render :edit
    end
  end
  def destroy
    @actualite = Actualite.find(params[:id])
    @actualite.destroy
    redirect_to actualites_path
  end

  private

  def actualite_params
    params.require(:actualite).permit(:name, :tagline, :url, :classification, :calendrier)
  end
  def find_product
    @actualite = Actualite.find(params[:id])
  end

end
