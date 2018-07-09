class ArtistsController < ApplicationController

  def show
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
  end

  def create
    binding.pry
    @artist = Artist.create(name: params[:student][:first_name], last_name: params[:student][:last_name])
    redirect_to student_path(@student)
  end

  def edit
    @artist = Artist.find(params[:id])
  end

end
