class MoviesController < ApplicationController
  # layout 'application' #standard one
  # layout :first_layout, only:[:show] #refer to a method inside the controler
  # layout :second_layout, only:[:create, :show] # for exapme onl used for create method
  # layout :third_layout, except:[:index] # everytime except for index


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
      # render: actor and return
    else
      movie.update_attributes(params[:movie])
      # render: show
    end
    redirect_to movie
  end

  def destroy
    @movie = Movie.find params[:id]
    @movie.destroy
    redirect_to movies_url
  end

  private

  # def which_layout
  #   if 2+2=5
  #     'one_layout'
  #   else
  #     'another_layout'
  #   end
  # end

end
