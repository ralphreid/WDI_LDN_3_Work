class ActorMovie

  def initialize connection
    @connection = connection
  end

  def all
    @connection.exec "SELECT * FROM actors WHERE id=#{id} in (SELECT * FROM actors_movies)" 
    # getting an instance of the the already initiated Movie method (because we created an instance in before main.rb)
  end

  def find id
    @connection.exec("SELECT * FROM actors_movies WHERE id=#{id}").first 
    # takes in the params[:movie_id] from -- get "/movies/:movie_id"
    # takes it in as the argument for this method (id) and passes it to the method 
  end

  def search query
    @connection.exec "SELECT * FROM movies WHERE title ILIKE '%#{query}%'"
  end

  def delete movie_id
    @connection.exec("DELETE FROM movies WHERE id=#{:id}")
  end



end