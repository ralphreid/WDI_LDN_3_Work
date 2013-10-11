require "sinatra"
require "sinatra/contrib/all"
require "pg"
require "pry"
get "/" do
  db = PG.connect(dbname: "movies", host: "localhost")
  begin
    sql = "SELECT * FROM movies"
    @movies = db.exec(sql)
  ensure
    db.close
  end
  erb :index
end

get "/movies/:movie_id" do
  db = PG.connect(dbname: "movies", host: "localhost")
  begin
    movie_id = params[:movie_id].to_i
    sql = "SELECT * FROM movies WHERE id=#{movie_id}"
    @movie = db.exec(sql).first
  ensure
    db.close
  end
  erb :show
end

get "/new" do
  @movie = {}
  erb :new
end

post "/new" do
  
  db = PG.connect(dbname: "movies", host: "localhost")
  begin
    sql = "INSERT INTO movies (title, year, rated, poster, director, actors)
    VALUES ('#{params[:title]}', '#{params[:year]}', '#{params[:rated]}', '#{params[:poster]}', '#{params[:director]}', '#{params[:actors]}') RETURNING id"
    @movie = db.exec(sql)

    new_created_id = @movie[0]["id"]
     
    redirect "/movies/#{new_created_id}"
  ensure
    db.close
  end
end

post "/search" do
  db = PG.connect(dbname: "movies", host: "localhost")
  begin
    query_string = params[:query]
    sql = "SELECT * FROM movies WHERE title ILIKE '%#{query_string}%'"
    @movies = db.exec(sql)
  ensure
    db.close
  end

  erb :index
end


get "/movies/:movie_id/update" do
  db = PG.connect(dbname: "movies", host: "localhost")
  begin
    movie_id = params[:movie_id]
    sql = "SELECT * FROM movies WHERE id=#{movie_id}"
    @movie = db.exec(sql).first
  ensure
    db.close
  end
  erb :new
end

post "/movies/:movie_id/update" do
  db = PG.connect(dbname: "movies", host: "localhost")
  begin
    movie_id = params[:movie_id].to_i

    sql = "UPDATE movies SET
     title='#{params[:title]}',
     year='#{params[:year]}',
     rated='#{params[:rated]}', 
     poster='#{params[:poster]}',
     director='#{params[:director]}', 
     actors='#{params[:actors]}' 
     WHERE id=#{movie_id}"
    db.exec(sql)
  ensure
    db.close
  end

  redirect "/movies/#{movie_id}"
end





post "/movies/:movie_id/delete" do
  db = PG.connect(dbname: "movies", host: "localhost")
  begin
    movie_id = params[:movie_id]
    sql = "DELETE FROM movies WHERE id=#{movie_id}"
    db.exec(sql)
  ensure
    db.close
  end

  redirect "/"
end



















