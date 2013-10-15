class Actor

  def initialize connection
    @connection = connection
  end

  def all
    @connection.exec "SELECT * FROM actors" 
    # getting an instance of the the already initiated Movie method (because we created an instance in before main.rb)
  end

  def find id
    @connection.exec("SELECT * FROM actors WHERE id=#{id}").first 
    # takes in the params[:movie_id] from -- get "/movies/:movie_id"
    # takes it in as the argument for this method (id) and passes it to the method 
  end

  def create params
    @connection.exec
      ("INSERT INTO actors 
      (first_name, last_name, dob, image_url)
      VALUES (
      '#{params[:first_name]}', 
      '#{params[:last_name]}', 
      '#{params[:dob]}', 
      '#{params[:image_url]}')
      RETURNING id")[0]["id"]
  end

  def search query
    @connection.exec "SELECT * FROM actors WHERE title ILIKE '%#{query}%'"
  end

  def update params
    @connection.exec("UPDATE actors SET
      first_name  = '#{params[:first_name]}', 
      last_name   = '#{params[:last_name]}', 
      dob         = '#{params[:dob]}', 
      image_url   = '#{params[:image_url]}'
      WHERE id    = #{params[:actor_id]}")
  end

  def delete actor_id
    @connection.exec("DELETE FROM actors_movies WHERE actors=#{actor_id}")
    @connection.exec("DELETE FROM actors WHERE id=#{actor_id}")
  end

  def movie id
    @connection.exec("SELECT * FROM movies INNER JOIN actors_movies ON actors_movies.movies = movies.id WHERE actors_movies.actors=#{id}")
  end

end
