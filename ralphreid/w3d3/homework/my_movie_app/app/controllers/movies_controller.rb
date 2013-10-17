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
    redirect_to @movie
  end

  def edit
    @movie = Movie.find params[:id]
    @actors = Actor.all 
  end

  def show
    @movie = Movie.find params[:id]
  end

  def update
    movie = Movie.find params[:id]
    if params[:actor_id]
      movie.actors.push(Actor.find(params[:actor_id]))
      movie.save
    else
      movie.update_attributes(params[:movie])
    end
    redirect_to movie
  end

  def destroy
    @movie = Movie.find params[:id]
    @movie.destroy
    redirect_to movies_url
  end
end
