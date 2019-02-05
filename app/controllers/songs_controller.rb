class SongsController < ApplicationController
  before_action :find_song, only: [:show, :edit, :destroy]

  def index
    @songs = Song.all
  end

  def show
  end

  def edit
  end

  def update
    find_song
    if @song.update(song_params)
      redirect_to song_path(@song)
    else
      render :edit
    end
  end

  def destroy
    find_song.destroy
    redirect_to songs_path
  end

  private

  def find_song
    @song = Song.find(params[:id])
  end

  def song_params
    params.require(:song).permit(:title, :released, :release_year, :artist_name, :genre)
  end

end
