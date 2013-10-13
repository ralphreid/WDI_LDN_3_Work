class Actor

  def initialize connection
    @connection = connection
  end

  def all
    @connection.exec "SELECT * FROM actors"
  end

  def movies id
    @connection.exec("SELECT * FROM movies
      INNER JOIN actors_movies
      ON actors_movies.movie_id = movies.id
      WHERE actors_movies.actor_id = #{id}")
  end

  def find id
    @actor = @connection.exec("SELECT * FROM actors WHERE id=#{id}").first
  end

  def create params
    @connection.exec("INSERT INTO actors (dob, last_name, first_name, image_url)
      VALUES ('#{params[:dob]}', '#{params[:last_name]}', '#{params[:first_name]}', '#{params[:image_url]}' ) RETURNING id") [0]["id"]
    @connection.exec( "INSERT INTO actors_movies (movie_id, actor_id)
      VALUES ('#{params[:movie]}', '#{params[:actor]}')") 
  end

  # def create_movie_relationship params
  #   movie = params[:movie_id].to_i
  #   actor = params[:actor_id].to_i

    # @connection.exec( "INSERT INTO actors_movies (movie_id, actor_id)
    #   VALUES ('#{movie}', '#{actor}')") 


     # @connection.exec( "INSERT INTO actors_movies (movie_id, actor_id)
     #  VALUES ('#{params[:movie_id].to_i}', '#{params[:actor_id].to_i}')")  
  # end

  def search query
    @connection.exec "SELECT * FROM actors WHERE
      ( first_name ILIKE '%#{query}%' ) OR ( last_name ILIKE '%#{query}%' )"
  end

  def delete id
    @connection.exec "DELETE FROM actors WHERE id = #{id}"
  end

  def find id
    @connection.exec("SELECT * FROM actors WHERE id=#{id.to_i}").first
  end

  def update params
    @connection.exec "UPDATE actors SET
      first_name = '#{params[:first_name]}',
      last_name = '#{params[:last_name]}',
      dob = '#{params[:dob]}',
      image_url = '#{params[:image_url]}'
      WHERE id = #{params[:actor_id]}"
  end

end