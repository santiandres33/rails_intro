class ArtistsController < ApplicationController
  def new
  end

  def index
    @artists = Artist.all
  end

  def create
  end

  def show
    @artist = Artist.find(params[:id])
  end
end
