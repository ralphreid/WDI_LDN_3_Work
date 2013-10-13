require 'sinatra'
require 'sinatra/contrib/all'
require 'sinatra/reloader'
require 'pg'
require 'pry'

require_relative './models/actor.rb'
require_relative './models/movie.rb'
also_reload './models/actor.rb'
also_reload './models/movie.rb'

# Configuration

before do
  @db = PG.connect(dbname: "movies", host: "localhost")
  @actor = Actor.new(@db)
  @movie = Movie.new(@db)
end

after do
  @db.close
end

# Routes Handlers

get '/' do 
  @actors = @actor.all
  @movies = @movie.all
  erb :index
end

get "/actors/:actor_id" do
  @actor = @actor.find params[:actor_id] #because SQL does not know that a sinle record ..... it returns it as an array...so we call it .first .. we get a hash which we can call title on in the show
  erb :show_actor
end

get "/movies/:movie_id" do
  @movie = @movie.find params[:movie_id]
  erb :show_movie
end

get "/new_actor" do
  @actor = {} # w initialize and empty hash inorder to initialze thie object because th if statment in erb :new requires this variable
  erb :new_actor
end

post "/new_actor" do
  new_created_id = @actor.create params
  redirect "/actors/#{new_created_id}"
end

get "/new_movie" do
  @movie = {} # w initialize and empty hash inorder to initialze thie object because th if statment in erb :new requires this variable
  erb :new_movie
end

post "/new_movie" do
  new_created_id = @movie.create params
  redirect "/movies/#{new_created_id}"
end

post "/search" do
  @actors = @actor.search params[:query] # actors because potential more than one
  @movies = @movie.search params[:query] 
  erb :index
end

get "/actors/:actor_id/update" do
  @actor = @actor.find params[:actor_id]
  erb :new_actor
end

post "/actors/:actor_id/update" do
  @actor.update params
  redirect "/actors/#{params[:actor_id]}"
end

get "/movies/:movie_id/update" do
  @movie = @movie.find params[:movie_id]
  erb :new_movie
end

post "/movies/:movie_id/update" do
  @movie.update params
  redirect "/movies/#{params[:movie_id]}"
end

post "/actors/:actor_id/delete" do
  @actor.delete params[:actor_id]
  redirect "/"
end

post "/movies/:movie_id/delete" do 
  @movie.delete params[:movie_id]
  redirect "/"
end