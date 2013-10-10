require 'sinatra'
require 'sinatra/contrib/all'
require 'pg'
require 'pry'

get '/' do
  db = PG.connect(dbname: 'movies', host: 'localhost')
  begin
    sql = "SELECT * FROM actors"
    @actors = db.exec(sql)
  ensure
    db.close
  end
  erb :index
end

get "/actors/:actor_id" do
  db = PG.connect(dbname: 'movies', host: 'localhost')
  begin
    actor_id = params[:actor_id].to_i
    sql = "SELECT * FROM actors WHERE id=#{actor_id}"
    @actor = db.exec(sql).first #because SQL does not know that a sinle record ..... it returns it as an array...so we call it .first .. we get a hash which we can call title on in the show
  ensure
    db.close
  end
  erb :show
end

get "/new" do
  @actor = {} # w initialize and empty hash inorder to initialze thie object because th if statment in erb :new requires this variable
  erb :new
end

post "/new" do
  db = PG.connect(dbname: 'movies', host: 'localhost')
  begin
    sql = "INSERT INTO actors (dob, last_name, first_name, image_url)
    VALUES ('#{params[:dob]}', '#{params[:last_name]}', '#{params[:first_name]}', '#{params[:image_url]}' ) RETURNING id"
    @actor = db.exec(sql)
    new_created_id = @actor[0]["id"]
    redirect "/actors/#{new_created_id}"
  ensure  
    db.close
  end
    erb :index  #use the same index so we can reuse the .each allready being used
end

post "/search" do
  db = PG.connect(dbname: 'movies', host: 'localhost')
  begin
    query_string = params[:query]
    sql = "SELECT * FROM actors WHERE
      ( first_name ILIKE '%#{query_string}%' ) OR ( last_name ILIKE '%#{query_string}%' )  " # use ILIKE to ignore case sensitivity
    @actors = db.exec(sql) # actors because potential more than one result
  ensure  
    db.close
  end
    erb :index  #use the same index so we can reuse the .each already being used
end

post "/actors/:actor_id/delete" do
  db = PG.connect(dbname: 'movies', host: 'localhost')
  begin
    actor_id = params[:actor_id]
    sql = "DELETE FROM actors WHERE id = #{actor_id}" # use ILIKE to ignore case sensitivity
    @actor = db.exec(sql) # no witien value req because we are just deleting something
  ensure  
    db.close
  end
  redirect "/"
end

# get "/movies/:movie_id/update" do
#   db = PG.connect(dbname: 'movies', host: 'localhost')
#   begin
#     movie_id = params[:movie_id]
#     sql = "SELECT * FROM movies WHERE id=#{movie_id}"
#     @movie = db.exec(sql).first # ngets the first item returned
#   ensure  
#     db.close
#   end
#   erb :new
# end

# post "/movies/:movie_id/update" do
#   db = PG.connect(dbname: 'movies', host: 'localhost')
#   begin
#     movie_id = params[:movie_id].to_i
#     sql = "UPDATE movies SET
#         title = '#{params[:title]}',
#         year = '#{params[:year]}',
#         rated = '#{params[:rated]}',
#         poster = '#{params[:poster]}',
#         director = '#{params[:director]}',
#         actors = '#{params[:actors]}'
#         WHERE id = #{movie_id}"
#     db.exec(sql)
#   ensure  
#     db.close
#   end
#   redirect "/movies/#{movie_id}"
# end