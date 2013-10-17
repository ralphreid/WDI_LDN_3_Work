class ActorsController < ApplicationController

  def index
    @actors = Actor.all
  end

  def new
    @actor = Actor.new
  end

  def create
    @actor = Actor.new params[:actor]
    @actor.save
    redirect_to @actor
  end

  def edit
    @actor = Actor.find params[:id]
    @movies = Movie.all
  end

  def show
    @actor = Actor.find params[:id]
  end

  def update
    actor = Actor.find params[:id]
    if params[:movie_id]
      actor.movies << Movie.find(params[:movie_id])
      actor.save
    else
      actor.upedat_attributes(params[:actor])
    end
    redirect_to actor
  end

  def destroy
    @actor = Actor.find params[:id]
    @actor.destroy
    redirect_to actors_url
  end

end