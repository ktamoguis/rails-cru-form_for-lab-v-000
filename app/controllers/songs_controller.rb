class SongsController < ApplicationController

  def show
    binding.pry
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def create
    #binding.pry
    @song = Song.create(song_params(:name, :bio))
    redirect_to song_path(@song)
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    @song.update(song_params(:name, :bio))
    redirect_to song_path(@song)
  end

  private

  def song_params(*args)
    params.require(:song).permit(*args)
  end


end
