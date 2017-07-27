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
      redirect_to artist_song_path(song.artist, song)
    else
      render :new
    end
  end

  def edit
  end

  def destroy
  end

  def new
    @artist = Artist.find(params[:artist_id])
    @song = @artist.songs.new
  end

  private

    def song_params
      params.require(:song).permit(:title, :genre).merge(artist_id: params[:artist_id])
    end

end
