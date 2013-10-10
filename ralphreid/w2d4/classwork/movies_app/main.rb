require 'sinatra'
require 'sinatra/contrib/all'
require 'pg'
require 'pry'

get '/' do
  db = PG.connect(dbname: 'movies', host: 'localhost')
  begin
    sql = "SELECT * FROM movies"
    @movies = db.exec(sql)
    # p @movies   this statement not needed as it was just to test the connection is active in sinatra log
  ensure
    db.close
  end
  erb :index
end

get "/movies/:movie_id" do
  db = PG.connect(dbname: 'movies', host: 'localhost')
  begin
    movie_id = params[:movie_id].to_i
    sql = "SELECT * FROM movies WHERE id=#{movie_id}"
    @movie = db.exec(sql).first #because SQL does not know that a sinle record ..... it returns it as an array...so we call it .first .. we get a hash which we can call title on in the show
  ensure
    db.close
  end
  erb :show
end

get "/new" do
  erb :new
end

post "/new" do
  db = PG.connect(dbname: 'movies', host: 'localhost')
  begin
    sql = "INSERT INTO movies (title, year, rated, poster, director, actors)
    VALUES ('#{params[:title]}', '#{params[:year]}', '#{params[:rated]}', '#{params[:poster]}', '#{params[:director]}', '#{params[:actors]}') RETURNING id"
    @movie = db.exec(sql)
    new_created_id = @movie[0]["id"]
    redirect "/movies/#{new_created_id}"
  ensure  
    db.close
  end
    erb :index  #use the same index so we can reuse the .each allready being used
end

post "/search" do
  db = PG.connect(dbname: 'movies', host: 'localhost')
  begin
    query_string = params[:query]
    sql = "SELECT * FROM movies WHERE title ILIKE '%#{query_string}%'" # use ILIKE to ignore case sensitivity
    @movies = db.exec(sql) # movies because potential more than one result
  ensure  
    db.close
  end
    erb :index  #use the same index so we can reuse the .each allready being used
end