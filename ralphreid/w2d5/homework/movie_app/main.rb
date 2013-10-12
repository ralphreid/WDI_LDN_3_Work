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
  # @movie = Movies.new(@db)
end

after do
  @db.close
end

# Routes Handlers

get '/' do 
  @actors = @actor.all
  erb :index
end

get "/actors/:actor_id" do
  @actor = @actor.find params[:actor_id] #because SQL does not know that a sinle record ..... it returns it as an array...so we call it .first .. we get a hash which we can call title on in the show
  erb :show
end

get "/new" do
  @actor = {} # w initialize and empty hash inorder to initialze thie object because th if statment in erb :new requires this variable
  erb :new
end

post "/new" do
  new_created_id = @actor.create params
  redirect "/actors/#{new_created_id}"
end

post "/search" do
  @actors = @actor.search params[:query] # actors because potential more than one 
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