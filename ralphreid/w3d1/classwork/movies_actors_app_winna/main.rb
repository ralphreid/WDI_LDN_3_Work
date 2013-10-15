require "sinatra"
require "sinatra/contrib/all"
require "pg"
require "pry"
require "sinatra/reloader"
require_relative "./model/actor.rb"
require_relative "./model/movie.rb"
require_relative "./model/actor_movie.rb"
also_reload "./model/actor.rb"
also_reload "./model/movie.rb"
also_reload "./model/actor_movie.rb"

# CONFIGURATION #-#-#-#-#-#-#-#-#-# 

before do 
  @db = PG.connect(dbname: "movies", host: "localhost")
  @actor = Actor.new @db # or Movie.new(@db)
  @movie = Movie.new @db # or Movie.new(@db)
end

after do
  @db.close
end

# ACTORS_MOVIES route handlers #-#-#-#-#-#-#-#-#

get "/" do 
  @actors = @actor.all
  @movies = @movie.all
  erb :index
end

get "/actors/:actor_id" do
  @actor_find = @actor.find params[:actor_id]
  @actor_movies = @actor.movie params[:actor_id]
  erb :show
end


post "/search" do
  @actors = @actor.search params[:query] 
  # params[:query] is the name of the input 
  erb :index
end

get "/actors/:actor_id/update" do
  @actor = @actor.find params[:actor_id]
  erb :new
end

post "/actors/:actor_id/update" do
  @actor.update params
  redirect "/actors/#{params[:actor_id]}"
end

post "/actors/:actor_id/delete" do
  @actor.delete params[:actor_id]
  redirect "/"
end


 # MOVIES route handlers #-#-#-#-#-#-#-
 
  get "/movies/:movie_id" do
   @movie_find = @movie.find params[:movie_id]
   @movie_actors = @movie.actor params[:movie_id]
   erb :show_movie
  end

  get "/movies/:movie_id/actor/:actor_id" do
    @movie_find = @movie.find params[:movie_id]
    @movie_actors = @movie.actor params[:movie_id]
    erb :show_movie_actors
  end 
  
  post "/movies/:movie_id/actor/:actor_id" do
    @movie_find = @movie.find params[:movie_id]
    @movie_actors = @movie.actor params[:movie_id]
    erb :show_movie_actors
  end

  get "/movies/:movie_id/actors" do
    @movie = @movie.find params[:movie_id]
    @actors = @actor.all
    erb :show_movie_actors
  end 
  
  post "/movies/:movie_id/actor" do
    @movie.add_actor params[:actor_id], params[:movie_id]
    redirect "/movies/#{params[:movie_id]}"
  end

  post "/movies/:movie_id/actor/:actor_id/update" do
    @movie_actors = @movie.find params[:movie_id]
    redirect "/movies/#{params[:movie_id]}/actors/#{params[:actor_id]}/update"
  end

  get "/movies/:movie_id/actor/:actor_id/delete" do
    @movie.delete_actor params[:actor_id], params[:movie_id]
    redirect "/movies/#{params[:movie_id]}"
  end
 
  get "/movies/:movie_id/update" do
    @movie = @movie.find params[:movie_id]
    erb :new_movie
  end
 
  post "/movies/:movie_id/update" do
    @movie.update params 
    redirect "/movies/#{params[:movie_id]}"
  end
  
  post "/movies/:movie_id/delete" do
    @movie.delete params[:movie_id]
    redirect "/"
  end