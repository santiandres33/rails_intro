class SongsController < ApplicationController

  def index
    params[:query]
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def create
    song = Song.new(song_params)
    if song.save
      redirect_to show_song_path(song)
    else
      render :new
    end
  end

  def edit
  end

  def destroy
  end

  def new
    @song = Song.new
  end

  private

    def song_params
      params.require(:song).permit(:title, :artist, :genre)
    end

end
