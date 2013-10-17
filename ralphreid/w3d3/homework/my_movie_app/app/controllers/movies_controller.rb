class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new params[:movie]
    @movie.save
    redirect_to @ovie
  end

  def edit
    @movie = Movie.find params[:id]
  end

  def show
    @movie = Movie.find params[:id]
  end

  def update
    @movie = Movie.find params[:id]
    redirect_to @movie
  end

  def destroy
    @movie = Movie.find params[:id]
    @movie.destroy
    redirect_to movies_url
  end
end
