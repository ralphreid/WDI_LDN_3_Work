class Movie

  def initialize connection
    @connection = connection
  end

  def all
    @connection.exec "SELECT * FROM movies" 
    # getting an instance of the the already initiated Movie method (because we created an instance in before main.rb)
  end

  def find id
    @connection.exec("SELECT * FROM movies WHERE id=#{id}").first 
    # takes in the params[:movie_id] from -- get "/movies/:movie_id"
    # takes it in as the argument for this method (id) and passes it to the method 
  end

  def create params
    @connection.exec("INSERT INTO movies 
      (title, year, rated, poster, director, actors)
      VALUES
      ('#{params[:title]}', 
      '#{params[:year]}', 
      '#{params[:rated]}', 
      '#{params[:poster]}', 
      '#{params[:director]}', 
      '#{params[:actors]}') 
      RETURNING id")[0]["id"]
  end

  def search query
    @connection.exec "SELECT * FROM movies WHERE title ILIKE '%#{query}%'"
  end

  def update params
    @connection.exec("UPDATE movies SET
      title     = '#{params[:title]}',
      year      = '#{params[:year]}',
      rated     = '#{params[:rated]}', 
      poster    = '#{params[:poster]}',
      director  = '#{params[:director]}', 
      actors    = '#{params[:actors]}' 
      WHERE id  = #{params[:movie_id]}")
  end

  def delete movie_id
    @connection.exec("DELETE FROM actors_movies WHERE movies=#{movie_id}")
    @connection.exec("DELETE FROM movies WHERE id=#{movie_id}")  
  end

  def actor id
    @connection.exec("SELECT * FROM actors INNER JOIN actors_movies ON actors_movies.actors = actors.id WHERE actors_movies.movies=#{id}")  
  end

  def add_actor actor_id, movie_id
    @connection.exec("INSERT INTO actors_movies (actors, movies) VALUES (#{actor_id}, #{movie_id})")
  end

  def delete_actor actor_id, movie_id
    sql = "DELETE FROM actors_movies WHERE actors=#{actor_id} AND movies=#{movie_id}"
    puts sql
    @connection.exec(sql)
  end


end
